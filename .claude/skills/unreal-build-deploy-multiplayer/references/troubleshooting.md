# Troubleshooting — Build, Test & Multiplayer (UE 5.6/5.7)

Symptom → cause → fix. Grounded in the embedded `references/api/` pages (not
reproduced live — no engine here).

## Multiplayer / replication

**A `UPROPERTY(Replicated)` property never changes on clients (no error).**
The single most common UE networking bug. You marked the property but forgot to
register it. Override `GetLifetimeReplicatedProps` and add
`DOREPLIFETIME(Class, Property)` (with `#include "Net/UnrealNetwork.h"`). Also
confirm `bReplicates = true;` in the constructor and that you're changing the
value **on the server** (`ROLE_Authority`) — client-side writes don't propagate.
(`...Replicate_Actor_Properties.md`.)

**Inherited replicated properties stopped replicating.** Your
`GetLifetimeReplicatedProps` doesn't call `Super::GetLifetimeReplicatedProps(...)`.
Always call Super first.

**`OnRep_` runs on clients but not the server.** By design — RepNotifies fire only
where the value *arrives* (clients). The server must call the update logic itself
right after it sets the value. Mirror the quick-start pattern: server setter calls
`OnHealthUpdate()`; client runs it from `OnRep_CurrentHealth`.
(`...Multiplayer_Programming_Quick_Start.md`.)

**A Server RPC does nothing / is "Dropped".** Server RPCs must be **called from
the client that owns the actor**. Called from a non-owning client, the server, or
on an actor with no owning connection → dropped. Check ownership and that the
actor replicates. (`...Remote_Procedure_Calls.md`, `...Actor_Owner_and_Owning_Connection.md`.)

**The calling client gets disconnected when it calls a Server RPC.** Your
`_Validate` returned `false`. That's the anti-cheat path — fix the validation
bounds, or the value the client is sending. (`...Remote_Procedure_Calls.md`.)

**An RPC arrives out of order / sometimes not at all.** RPCs are **Unreliable by
default**. Add `Reliable` for must-arrive, in-order calls — but only where needed
(it costs bandwidth). Keep transient cosmetic events Unreliable.

**`NetMulticast` only ran on the caller.** A multicast called **from a client**
executes locally only — multicasts are meant to be called **from the server**.

**Multicast RPC didn't reach a far-away client.** It only runs on clients the
actor is **relevant** for. Check relevancy/priority/dormancy
(`...Actor_Relevancy.md`, `...Actor_Priority.md`, `...Actor_Network_Dormancy.md`).

**Linking error on `DOREPLIFETIME` / `GetLifetimeReplicatedProps`.** Missing
`#include "Net/UnrealNetwork.h"` in the `.cpp`.

**Spawned actor isn't visible on clients.** Only the **server** should spawn
replicated actors; set `bReplicates = true`. Client-spawned actors stay local.

**Sessions code returns null / does nothing.** The Session Interface lives on the
**server** and is reached via `AGameSession`; `IOnlineSubsystem::Get()` returns
null if `DefaultPlatformService` in `Engine.ini` is wrong/unloadable. All session
calls are async — act in the `On…Complete` delegate, not on the return.
(`...Online_Subsystem.md`, `...Session_Interface.md`.)

## Build / packaging

**Packaged build fails with "missing shaders" / won't load content.** You didn't
**cook**, or copied the editor folder instead of packaging. Run RunUAT
BuildCookRun with `-cook` (and `-stage -package`); for a dedicated server, cook
the **server** target's content. (`...Build_Operations_Cook,_Package,_Deploy,_and_Run.md`,
`...Setting_Up_Dedicated_Servers.md`.)

**Build is missing optimizations / still logs in release.** Wrong configuration.
Use `-clientconfig=Shipping` (and set the **Cooker** config to Shipping for a
By-the-Book release). Development/DebugGame keep logging & console.
(`...Releasing_Your_Project.md`.)

**Build config change in the toolbar is ignored (UE 5.4.0).** Known bug with "Use
Project Setting" — restart the editor, or pick an explicit binary config from the
Platforms menu / use the CLI. Fixed in 5.4.1. (`...Build_Operations....md`.)

**Target platform is greyed out / missing from the toolbar or CLI.** Its SDK/Editor
module isn't installed (or the engine version doesn't support that SDK). Install
the platform SDK (AutoSDK), confirm any external device tools, and "claim" devices
in Device Manager. (`...Build_Operations....md`, `...General_Platform_Support_AutoSDK_Reference.md`.)

**`RunUAT` not found / `unreal.sh` exits 127.** No engine in this environment —
expected. Install UE 5.7, `export UE_ROOT=/path/to/UnrealEngine` (the dir
containing `Engine/`), re-run. `package.sh` detects 127 and prints this.

**Linux build fails to compile.** Install the custom clang toolchain
(`Build/BatchFiles/Linux/SetupToolchain.sh`); the Quickstart lists clang 18.1.0 /
Ubuntu 22.04 / Vulkan RHI requirements. (`...Linux_Development_Quickstart.md`,
`...Linux_Development_Requirements.md`.)

**My patch isn't overriding the base content.** The changed-files pak must carry
the **`_p` suffix** (`MyGame_p.pak`) so the engine loads it last. Note: UE builds
patches but each store distributes them. (`...Patching_Overview.md`.)

**Dedicated server build won't run.** Need a `<Project>Server.Target.cs`, the
Server configuration built, **and** server content cooked
(`Saved/Cooked/<Platform>Server`). Run `<Project>Server -log`.
(`...Setting_Up_Dedicated_Servers.md`.)

## Testing

**My automation test doesn't show up.** It must be in a compiled module
(`Private/Tests/…Test.cpp`), declared with `IMPLEMENT_SIMPLE/COMPLEX_AUTOMATION_TEST`
(or `DEFINE_SPEC`), and the editor rebuilt. Specs use `.spec.cpp` with no "Test"
in the name. Check the `EAutomationTestFlags` filter/context match where you're
running. (`...Write_C++_Tests.md`, `...Automation_Spec.md`, `...Configure_Automation_Tests.md`.)

**Headless test run exits nonzero / hangs in CI.** Use
`-ExecCmds="Automation RunTest <path>;Quit"` (the `;Quit` matters),
`-unattended -nopause`, and `-nullrhi` on GPU-less CI. A test that loads a map but
doesn't use **latent commands** can race — wrap map loads / async work in
`ADD_LATENT_AUTOMATION_COMMAND`. (`...Run_Automation_Tests.md`.)

**Test passes locally, fails headless.** In-editor a map loads immediately; in a
game/headless run it loads next frame — use latent commands for consistent timing.
(`...Write_C++_Tests.md`.)

## When the docs are the source of truth

These snippets are doc-sourced and **not compile-tested** (no engine here). Before
relying on an exact signature, grep the matching `references/api/*.md` page — it
starts with the canonical `**Source:**` URL.
