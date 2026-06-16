---
name: unreal-build-deploy-multiplayer
description: >
  Build, test, and network an Unreal Engine 5.6/5.7 C++ game — package and ship
  it from the command line, run automated tests headless, and add
  server-authoritative multiplayer. Use this whenever you need to package/cook a
  build (RunUAT BuildCookRun: build + cook + stage + package), pick a build
  configuration (Development vs Shipping), make a Shipping/release build, build a
  dedicated server, set up DLC/patching (`_p` pak), or set up Pixel Streaming;
  OR run the Automation Test Framework (Simple/Complex/Spec tests, headless via
  `-ExecCmds="Automation RunTest …;Quit"`) or profile with Unreal Insights; OR
  add multiplayer — make an Actor replicate (`bReplicates`), replicate a
  UPROPERTY (`Replicated`/`ReplicatedUsing` + `GetLifetimeReplicatedProps` +
  `DOREPLIFETIME`), send RPCs (`UFUNCTION(Server/Client/NetMulticast,
  Reliable/Unreliable)`), check authority (`GetLocalRole() == ROLE_Authority`,
  autonomous vs simulated proxy), or use the Online Subsystem (sessions,
  matchmaking). Reach for it any time the task is "package the game", "cook a
  build", "make a Shipping build", "build for Linux/Windows", "build a dedicated
  server", "make a patch", "run the tests headless", "add a unit/automation
  test", "profile the build", "add multiplayer", "sync this value across
  clients", "make this server-authoritative", "call the server from the client",
  "the property won't replicate", "RepNotify", "create a session", or "ship it".
  It has the verified RunUAT BuildCookRun command, the build-config split, the
  Automation test macros + headless run, the replication + RPC model, the
  role/authority matrix, and the Steam-first platform order from the project
  benchmark. Covers Producer, Compliance Tester, QA Tester, and Network
  Programmer work. Assumes a buildable project (unreal-project-setup); gameplay
  C++ idioms come from unreal-gameplay-cpp.
---

# Unreal Build, Deploy & Multiplayer (C++)

Three linked production jobs in one skill: **package and ship** a UE 5.6/5.7
project from the command line, **test** it with the Automation Framework, and
**network** it with server-authoritative replication. UE C++ throughout
(`UCLASS`/`UPROPERTY`/`UFUNCTION` reflection macros); Blueprint paths noted where
the docs give them.

Snippets are doc-sourced from the embedded UE 5.6/5.7 documentation
(`references/api/`), **not compile-tested in this environment** (no engine
installed). Run the real toolchain via `scripts/unreal.sh` once `UE_ROOT` is set.

## The one thing that trips everyone up

UE multiplayer is **server-authoritative replication**, not message-passing you
write by hand. The server holds the one true game state; clients see a copy. To
share a value you do **not** send packets — you:

1. Mark the Actor to replicate in its constructor: `bReplicates = true;`
2. Mark the property `UPROPERTY(Replicated)` (or `ReplicatedUsing=OnRep_X`), **and**
3. Override `GetLifetimeReplicatedProps` and register it with `DOREPLIFETIME`.

**Forgetting step 3 is the silent killer:** a `UPROPERTY(Replicated)` whose
`DOREPLIFETIME` line is missing from `GetLifetimeReplicatedProps` **never
replicates and never errors** — it just stays at its default on clients. Every
replicated property needs both the specifier *and* a line in
`GetLifetimeReplicatedProps`.

And the parallel build gotcha: **you package with RunUAT `BuildCookRun`** (which
builds, *cooks*, stages, and packages) — you do **not** copy the editor's build
folder. Uncooked content fails to load on the target ("missing shaders"). See
[Packaging](#packaging-runuat-buildcookrun).

```cpp
// DerivedActor.h  — the full replication contract
UCLASS()
class ADerivedActor : public AActor
{
    GENERATED_BODY()
public:
    UPROPERTY(Replicated)            // 2. mark the property
    uint32 Health;

    virtual void GetLifetimeReplicatedProps(
        TArray<FLifetimeProperty>& OutLifetimeProps) const override; // 3.
};
```
```cpp
// DerivedActor.cpp
#include "DerivedActor.h"
#include "Net/UnrealNetwork.h"   // required for DOREPLIFETIME

ADerivedActor::ADerivedActor(const class FPostConstructInitializeProperties& PCIP)
    : Super(PCIP)
{
    bReplicates = true;          // 1. mark the actor
}

void ADerivedActor::GetLifetimeReplicatedProps(
    TArray<FLifetimeProperty>& OutLifetimeProps) const
{
    Super::GetLifetimeReplicatedProps(OutLifetimeProps); // don't drop this — parent props
    DOREPLIFETIME(ADerivedActor, Health);                // 3. register Health
}
```
(`references/api/...Programming_Multiplayer_Games_Replicate_Actor_Properties.md`.)
The full rule set — `ReplicatedUsing`/RepNotify, `DOREPLIFETIME_CONDITION`
(`COND_OwnerOnly` etc.), object-reference replication — is in
`references/replication_and_rpcs.md`.

## Authority & roles (who's allowed to change state)

The server has `ROLE_Authority` over replicated actors; a client's own pawn is
`ROLE_AutonomousProxy`; other clients' pawns are `ROLE_SimulatedProxy`. Gate
state changes on authority — change the value **on the server**, let replication
carry it down:

```cpp
void AMyChar::SetCurrentHealth(float HealthValue)
{
    if (GetLocalRole() == ROLE_Authority)            // server only
    {
        CurrentHealth = FMath::Clamp(HealthValue, 0.f, MaxHealth);
        OnHealthUpdate();   // server runs it now; clients run it from OnRep_
    }
}
```
(`references/api/...Multiplayer_Programming_Quick_Start.md`,
`...Actor_Role_and_Remote_Role.md`.) Role/remote-role matrix in
`references/replication_and_rpcs.md`.

## RPCs (calling across the connection)

When you *do* need an explicit cross-machine call (cosmetic events, a client
asking the server to act), use an RPC: a `UFUNCTION` with a direction specifier,
plus a separate `_Implementation` body. The actor must replicate (`bReplicates`).

```cpp
// .h — one specifier from {Server, Client, NetMulticast}; Reliable optional
UFUNCTION(Server, Reliable, WithValidation)  // client -> runs on server
void ServerFire(FVector_NetQuantize Target);

UFUNCTION(NetMulticast, Unreliable)          // server -> server + all clients
void MulticastPlayFX();
```
```cpp
// .cpp — you implement *_Implementation, not the plain name
void AMyChar::ServerFire_Implementation(FVector_NetQuantize Target) { /* authoritative */ }
bool AMyChar::ServerFire_Validate(FVector_NetQuantize Target) { return true; } // WithValidation
void AMyChar::MulticastPlayFX_Implementation() { /* runs everywhere */ }
// Call site: just call the plain name — the system routes it.
ServerFire(Target);
```
| Specifier | Runs on | Called from |
|-----------|---------|-------------|
| `Server` | the server | the **owning client** (else dropped) |
| `Client` | the owning client | the server |
| `NetMulticast` | server + all relevant clients | the server |

RPCs are **Unreliable by default**; add `Reliable` only for must-arrive calls
(costs bandwidth). A `Server` RPC with `WithValidation` runs `_Validate` first;
returning `false` **disconnects the cheating client**. Full execution matrix,
ownership rules, and `Remote` in `references/replication_and_rpcs.md`.

> `NetMulticast`/`Server`/`Client` RPCs are the *transient/cosmetic* tool;
> replicated properties are the *state* tool. Prefer a replicated property + its
> RepNotify over a multicast RPC for anything that must stay consistent — see the
> health example, which uses zero RPCs.

## Packaging: RunUAT BuildCookRun

Packaging is done by the **Unreal Automation Tool (UAT)** via its
**BuildCookRun** command, which runs the pipeline: **Build** (compile) → **Cook**
(convert assets to the platform's runtime format) → **Stage** (copy to a clean
dir) → **Package** (native distribution format) → optional **Deploy**/**Run**.

```bash
# Verified shape (Linux Quickstart). RunUAT.sh lives in Engine/Build/BatchFiles/.
$UE_ROOT/Engine/Build/BatchFiles/RunUAT.sh BuildCookRun \
    -project=/abs/MyGame.uproject \
    -platform=Linux -clientconfig=Shipping \
    -build -cook -stage -package
```
(`references/api/...Build_Operations_Cook,_Package,_Deploy,_and_Run.md`,
`...Linux_Development_Quickstart.md`.)

`scripts/package.sh /abs/MyGame.uproject [platform] [config]` wraps this through
`scripts/unreal.sh uat` and reports the exit code. In **this** environment no
engine is installed, so `unreal.sh` (and thus `package.sh`) **exits 127** with
install guidance — expected, not a bug. Set `UE_ROOT` and re-run for a real
package. Cooking/staging/pak details + the editor-toolbar and Project Launcher
paths are in `references/packaging_and_cooking.md`.

## Build configurations

Pick the right config — it changes optimization, asserts, and logging:

- **Development** — default for iteration: optimized but keeps `check()`/logging.
- **Shipping** — the release config: max optimization, debug/console output
  stripped. Use it for the final build (`-clientconfig=Shipping`, and for a
  By-the-Book release set the **Cooker** config to Shipping too).
- **DebugGame** / **Test** — debugging and profiling variants.

Server/client get their own targets (`<Project>Server.Target.cs`,
`<Project>Client.Target.cs`) and configs (Development Server, Shipping Server).
A **dedicated server** runs headless (no rendering, no local player) — build the
Server target, cook server content, run `<Project>Server -log` (listens on
`127.0.0.1:7777` by default). See
`references/api/...Setting_Up_Dedicated_Servers.md` and
`references/packaging_and_cooking.md`.

## DLC / patching & Pixel Streaming (brief)

- **Patching:** the platform-agnostic method packages the full build and emits a
  changed-files pak with a **`_p` suffix** (`MyGame_p.pak`) layered over the
  release pak. UE builds patches but does **not** distribute them — each store
  (Steam/console) has its own upload path.
  (`references/api/...Patching_Overview.md`.)
- **Pixel Streaming:** runs the game on a server/cloud GPU and streams rendered
  frames to a browser (input flows back). Niche for an indie desktop title; note
  it exists for cloud-demo/web-reach scenarios.
  (`references/api/...Pixel_Streaming_Overview.md`.) XR/OpenXR docs are also
  embedded under `references/api/...XR_Development_*` if VR/AR is ever in scope.

## Testing: the Automation Test Framework

The Automation Framework is UE's headless test harness. Tests are C++ classes
declared by macros (they live outside the `UObject` system), in
`Private/Tests/[Class]Test.cpp`:

- **Simple** — one atomic unit/feature test: `IMPLEMENT_SIMPLE_AUTOMATION_TEST`.
- **Complex** — same logic over many inputs (e.g. load all maps):
  `IMPLEMENT_COMPLEX_AUTOMATION_TEST` (override `GetTests` too).
- **Spec** — BDD `Describe`/`It` style (`references/automation_testing.md`).

```cpp
IMPLEMENT_SIMPLE_AUTOMATION_TEST(FPlaceholderTest,
    "TestGroup.TestSubgroup.Placeholder Test",
    EAutomationTestFlags::EditorContext | EAutomationTestFlags::EngineFilter)

bool FPlaceholderTest::RunTest(const FString& Parameters)
{
    TestTrue(TEXT("math holds"), 2 + 2 == 4);
    return true;   // true = pass, false = fail
}
```
(`references/api/...Write_C++_Tests.md`.)

**Run headless** by passing `-ExecCmds` to the editor/client executable — drive
it through `scripts/unreal.sh editor`:

```bash
# Through the wrapper (exits 127 here — no engine):
scripts/unreal.sh editor /abs/MyGame.uproject \
    -ExecCmds="Automation RunTest TestGroup.TestSubgroup;Quit" \
    -unattended -nullrhi -nosplash \
    -ReportExportPath=/abs/out/test-report
```
`-ReportExportPath` writes JSON+HTML results; CI keys off the exit code.
(`references/api/...Run_Automation_Tests.md`.) Profiling with **Unreal Insights**
(trace channels, Timing/Networking Insights) is in `references/automation_testing.md`.

## Platform order (from the benchmark)

From `docs/benchmarks/main.md`, ship in this order — don't over-invest in later
platforms first (the order is engine-agnostic; ignore the doc's engine remark):

1. **Steam first — Windows + Linux desktop** (`-platform=Win64`, `-platform=Linux`).
   Non-negotiable: ~75% PC share, $100 listing fee, best discoverability.
2. **Nintendo Switch 2** — needs the platform SDK + dev kit + cert; budget
   ~$15k–$40k/platform. Console docs: `references/api/...Consoles_Nintendo_Switch.md`.
3. **Xbox / PlayStation** — each its own SDK + cert pass
   (`...Consoles_Xbox.md`, `...Consoles_PlayStation_5.md`).

Abstract platform code (input, save, achievements, store) from day one. Localize
**Simplified Chinese** + **Brazilian Portuguese** (~30% revenue uplift each).
Steam Deck verification: `references/api/...Steam_Deck.md`. For sessions/lobbies,
the Steam path is the Online Subsystem Steam plugin
(`...Online_Subsystem_Online_Subsystem_Steam.md`).

## Scaffolds

- `scripts/new_replicated_actor.sh <Dir> <ActorName>` — emits a `.h`/`.cpp` pair
  for an `AActor` with `bReplicates`, a `UPROPERTY(ReplicatedUsing=OnRep_…)`
  property, `GetLifetimeReplicatedProps` + `DOREPLIFETIME`, and a
  `UFUNCTION(Server, Reliable)` RPC + `_Implementation`. File-only.
- `scripts/package.sh` — wraps RunUAT BuildCookRun (see above).
- `scripts/unreal.sh` — the shared toolchain wrapper (`uat`/`editor`/`build`).

## What this covers / hands off to

- **Covers:** Producer (release/Shipping builds, platform roadmap, patching),
  Compliance Tester (platform/SDK requirements, dedicated-server + console
  setup), QA Tester (Automation tests, headless CI gate, Insights profiling), and
  Network Programmer (replication, RPCs, roles, sessions).
- **Hands off to:**
  - `unreal-project-setup` — scaffolding a buildable project, modules,
    `.Build.cs`, `.Target.cs` (assumed).
  - `unreal-gameplay-cpp` — Actor/Component C++, the lifecycle, spawning that the
    replicated/RPC code builds on.
  - `unreal-blueprints` — the Blueprint equivalents (Replicates checkbox,
    replicated custom events) of the C++ here.

## Deep references

- `references/replication_and_rpcs.md` — `bReplicates`, `Replicated`/
  `ReplicatedUsing`, `GetLifetimeReplicatedProps`+`DOREPLIFETIME`, the condition
  table, the RPC type/reliability/validation rules + execution matrix, roles &
  authority, sessions.
- `references/packaging_and_cooking.md` — BuildCookRun stages, cook by-the-book
  vs on-the-fly, build configs, Shipping/release packaging, pak/patching,
  dedicated-server build/cook/run, platform notes.
- `references/automation_testing.md` — Simple/Complex/Spec test macros, latent
  commands, the headless `-ExecCmds` run + report export, Unreal Insights.
- `references/troubleshooting.md` — property won't replicate, RPC dropped,
  Server RPC disconnects the client, missing-shaders/uncooked build, wrong build
  config, the 127 "no engine here" case.
- `references/api/` — the exhaustive embedded UE 5.6/5.7 doc pages (grep it; it's
  the source of truth).
