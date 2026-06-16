# Packaging, Cooking, Build Configs & Patching (UE 5.6/5.7)

How to turn a project into a shippable build from the command line. Doc-sourced
from `references/api/` (Sharing_and_Releasing_Projects), not run here (no engine).

Primary source pages:
- `...Packaging_and_Cooking_Games_Build_Operations_Cook,_Package,_Deploy,_and_Run.md`
- `...Packaging_and_Cooking_Games_Releasing_Your_Project.md`
- `...Packaging_and_Cooking_Games_Content_Cooking.md`
- `...Linux_Game_Development_Linux_Development_Quickstart.md`
- `...Patching_and_DLC_General_Patching_Information_Patching_Overview.md`
- `...Network_Programming_Tutorials_and_Examples_Setting_Up_Dedicated_Servers.md`
- `...Consoles*.md`, `...Steam_Deck*.md`, `...Pixel_Streaming*.md`

## The pipeline: RunUAT BuildCookRun

Packaging is run by the **Unreal Automation Tool (UAT)**, via the **BuildCookRun**
command. **Do not** copy the editor's `Binaries/`/`Content/` folder — the content
must be *cooked* first or the target fails to load (the classic "missing shaders"
error). BuildCookRun runs these stages:

| Stage | Flag | What it does |
|-------|------|--------------|
| Build | `-build` | compiles the executables for the target platform |
| Cook | `-cook` | converts assets to the platform's runtime format (PNG→platform texture, etc.) |
| Stage | `-stage` | copies exe + cooked content to a clean dir outside the dev tree |
| Package | `-package` | wraps it in the platform's native distribution format |
| Deploy | `-deploy` | pushes the build to a target device (console/mobile) |
| Run | `-run` | launches the packaged build |

RunUAT lives in `Engine/Build/BatchFiles/` — `RunUAT.sh` (Mac/Linux),
`RunUAT.bat` (Windows). Verified command shapes:

```bash
# From the Linux Quickstart (Build+Cook+Stage+Package+Run):
$UE_ROOT/Engine/Build/BatchFiles/RunUAT.sh BuildCookRun \
    -project=/abs/MyGame.uproject \
    -platform=Linux -clientconfig=Shipping \
    -build -cook -stage -package
```
```bash
# Turnkey alternative (handles SDK/platform setup):
$UE_ROOT/Engine/Build/BatchFiles/RunUAT.sh Turnkey \
    -command=ExecuteBuild -platform=Linux -project=/abs/MyGame.uproject
```

`scripts/package.sh <project.uproject> [platform] [config]` wraps this through
`scripts/unreal.sh uat` and reports the exit code (127 here = no engine). Staged
output lands under `<Project>/Saved/StagedBuilds/`.

### Cooking: by-the-book vs on-the-fly

- **Cook By The Book (CBTB)** — cooks *everything* ahead of time. The right
  choice for release builds, performance tests, and playtests (full-speed, no
  server round-trips). No extra setup; it's the default for packaging.
- **Cook On The Fly (COTF)** — defers cooking; the build connects to a Cook
  Server (`UnrealEditor-cmd … -run=cook -targetplatform=… -cookonthefly`) and
  pulls cooked assets on demand. Faster iteration, dev-only. Client points at the
  server with `-filehostip=…`.

A raw cook (no package) is `UnrealEditor-cmd <proj> -run=cook
-targetplatform=<Platform>`, output under `Saved/Sandboxes/Cooked-<Platform>`.
Note: in UE 5.4.0 there was a "Use Project Setting" build-config bug (fixed
5.4.1) — choose an explicit binary config from the Platforms menu, or use the CLI.

## Build configurations

| Config | Use for |
|--------|---------|
| **Development** | day-to-day iteration: optimized, keeps `check()`, logging, console |
| **DebugGame** | debugging game code with the engine optimized |
| **Test** | profiling — Shipping-like but keeps some tooling |
| **Shipping** | the **release** build: max optimization, debug output & console stripped |

Set on the CLI with `-clientconfig=Shipping` (and `-serverconfig=…` for servers).
For a By-the-Book release also set the **Cooker** build configuration to
**Shipping**. In the editor it's the Platforms toolbar's Binary Configuration.

## Shipping / release packaging

The release flow (Project Launcher → Custom Launch Profile, or the equivalent
BuildCookRun flags): Build = **Shipping**, Cook = **By The Book** for your target
platform(s) + cultures (cook **zh-Hans** + **pt-BR** for the benchmark locales) +
maps, check **Create a release version** with a version number, enable **Compress
content** / **Save packages without versions** / **Store all content in a single
file (UnrealPak)**, set Cooker config = Shipping, Package = store locally, Deploy
= Do Not Deploy. The release pak + asset registry land in
`<Project>/Releases/<Version>/<Platform>` — **keep these**; future patches/DLC
diff against them. Steam can take full packages, but release-versioning is still
recommended for clean future updates.

## Dedicated server build

A dedicated server runs headless. Steps (from the Dedicated Servers tutorial,
Lyra example):
1. Create `<Project>Server.Target.cs` in `Source/` (see `unreal-project-setup`).
2. Build the **Development Server** (or Shipping Server) configuration →
   `Binaries/<Platform>/<Project>Server`.
3. **Cook server content** (editor: Platforms → Build Target = Server, Cook) →
   `Saved/Cooked/<Platform>Server`. Skipping the cook = "missing shaders" at run.
4. Run `./Binaries/Linux/<Project>Server -log` (default port 7777).
Client target/config are the parallel `<Project>Client.Target.cs` / Development
Client. The *netcode* inside the server is `references/replication_and_rpcs.md`.

## Patching & DLC

UE **builds** patches but does **not distribute** them — each store has its own
upload path. The **platform-agnostic** method re-packages the full build and emits
a sidecar pak of changed files with a **`_p` suffix** layered over the original:
`MyGame.pak` → `MyGame_p.pak`. The engine loads `_p` paks last so they override.
Chunking (`...Cooking_and_Chunking.md`, `...Preparing_Assets_for_Chunking.md`)
and **ChunkDownloader** (`...Using_ChunkDownloader_for_Patching*.md`) support
download-on-demand / DLC. See `...How_To_Create_a_Patch_(Platform-Agnostic).md`.

## Platform notes (benchmark order)

1. **Steam — Windows + Linux desktop** first (`-platform=Win64`, `-platform=Linux`).
   Linux needs the clang toolchain (`SetupToolchain.sh`); Vulkan RHI. Steam Deck
   is a Linux/Proton target — verify per `...Steam_Deck_Steam_Deck_Quick_Start.md`.
2. **Nintendo Switch 2** — `...Consoles_Nintendo_Switch.md`; SDK + dev kit + cert,
   ~$15k–$40k/platform.
3. **Xbox / PlayStation** — `...Consoles_Xbox.md`, `...Consoles_PlayStation_5.md`
   (+ PS4); each its own SDK + cert. A platform only appears in the toolbar/CLI
   when its SDK is installed (`AutoSDK` / `...General_Platform_Support*.md`).

macOS packaging + universal binaries: `...MacOS_Packaging_and_Publishing_for_macOS*.md`.

## Pixel Streaming & XR (brief)

- **Pixel Streaming** — runs the game on a server/cloud GPU and streams rendered
  frames to a browser; input flows back over WebRTC. For web reach / cloud demos,
  not a substitute for a native desktop build.
  (`...Pixel_Streaming_Starter_Guides..._Pixel_Streaming_Overview.md`,
  `...Pixel_Streaming_2_Overview.md`.)
- **XR / OpenXR** — if VR/AR is ever in scope, the head-mounted/handheld-AR and
  OpenXR docs are under `...XR_Development_*` (~83 pages).
