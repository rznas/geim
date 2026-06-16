# Replication, RPCs, Roles & Sessions (UE 5.6/5.7)

Server-authoritative multiplayer in C++. Doc-sourced from `references/api/`
(Networking_and_Multiplayer + Online_Subsystems), not compile-tested here.

Primary source pages:
- `...Programming_Multiplayer_Games_Replicate_Actor_Properties.md`
- `...Programming_Multiplayer_Games_Remote_Procedure_Calls.md`
- `...Programming_Multiplayer_Games_Actor_Role_and_Remote_Role.md`
- `...Network_Multiplayer_Basics_Networking_Overview.md`
- `...Network_Multiplayer_Basics_Multiplayer_Programming_Quick_Start.md`
- `...Network_Programming_Tutorials_and_Examples_Setting_Up_Dedicated_Servers.md`
- `...Online_Subsystems_and_Services_Online_Subsystem*.md` (+ `..._Session_Interface.md`)

## The model in one paragraph

UE uses a **client-server** architecture. The **server holds the one true,
authoritative game state**; each client renders a close approximation. You do not
hand-roll packets. You declare *what* state replicates (properties), let the
engine push server → client automatically, and use **RPCs** for explicit
cross-machine calls (mostly cosmetic events or a client asking the server to do
something). Build for multiplayer from day one — multiplayer code still works in
single-player, but retrofitting networking late means rewriting gameplay.

## Property replication — the three-part contract

1. **Actor opts in:** `bReplicates = true;` in the constructor.
2. **Property opts in:** `UPROPERTY(Replicated)` or `UPROPERTY(ReplicatedUsing=OnRep_X)`.
3. **Register it:** override `GetLifetimeReplicatedProps` and add a
   `DOREPLIFETIME(Class, Property)` line. `#include "Net/UnrealNetwork.h"`.

Skipping (3) is the silent failure mode: the property compiles, is "Replicated",
and **never replicates**. There is no error.

```cpp
// .h
UPROPERTY(Replicated)
uint32 Health;
virtual void GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const override;
```
```cpp
// .cpp
#include "Net/UnrealNetwork.h"
ADerivedActor::ADerivedActor(const class FPostConstructInitializeProperties& PCIP) : Super(PCIP)
{
    bReplicates = true;
}
void ADerivedActor::GetLifetimeReplicatedProps(TArray<FLifetimeProperty>& OutLifetimeProps) const
{
    Super::GetLifetimeReplicatedProps(OutLifetimeProps);  // keeps parent's replicated props
    DOREPLIFETIME(ADerivedActor, Health);
}
```

Replication is **delta-based**: a property only replicates when its value
changes, and only server → client. Once registered, a property replicates for the
object's lifetime — you can't unregister it (only condition it off).

### ReplicatedUsing / RepNotify (`OnRep_`)

`ReplicatedUsing=OnRep_X` names a `UFUNCTION() void OnRep_X()` that runs **on
clients** when the new value arrives — the place to update HUD, play feedback,
etc. The RepNotify is **not** called on the server, so server code must call the
update logic itself (see the quick-start health pattern: `SetCurrentHealth` runs
`OnHealthUpdate` on the server; clients run it from `OnRep_CurrentHealth`).

RepNotify signatures may take the **previous** value:
```cpp
UFUNCTION() void OnRep_Value(int32 LastHealthValue);            // copy of old value
UFUNCTION() void OnRep_ConstRef(const int32& LastHealthValue);  // const ref
UFUNCTION() void OnRep_NoParam();                               // no param
```

### Conditions (bandwidth control)

Use `DOREPLIFETIME_CONDITION(Class, Prop, COND_X)` to limit *who* gets a property:

| Condition | Replicates to |
|-----------|---------------|
| `COND_None` | everyone, whenever it changes (default) |
| `COND_InitialOnly` | only the initial bunch |
| `COND_OwnerOnly` | only the actor's owner |
| `COND_SkipOwner` | everyone except the owner |
| `COND_SimulatedOnly` | simulated proxies |
| `COND_AutonomousOnly` | autonomous proxies |
| `COND_Custom` | toggled at runtime via `DOREPLIFETIME_ACTIVE_OVERRIDE` in `PreReplication` |
| `COND_Never` | never |

(Full list incl. replay conditions in the api page.) Notify cadence:
`DOREPLIFETIME_CONDITION_NOTIFY(Class, Prop, REPNOTIFY_Always | REPNOTIFY_OnChanged)`.
`_FAST` macro variants build the descriptor at compile time. Object references
replicate automatically (sent as `FNetworkGUID`) if the object
`IsSupportedForNetworking`. `NotReplicated` on a member inside a replicated struct
excludes just that member.

## Roles & authority

`ENetRole` (in `EngineTypes.h`) answers "who can change this actor?":

| Role | Meaning |
|------|---------|
| `ROLE_None` | not replicated |
| `ROLE_SimulatedProxy` | mirrors true state, no authority (other clients' pawns) |
| `ROLE_AutonomousProxy` | simulates + has input authority (this client's own pawn) |
| `ROLE_Authority` | the true state; only the **server** sees this for replicated actors |

Get them with `GetLocalRole()` / `GetRemoteRole()`. **Gate state mutations on
authority** and let replication carry the result:

```cpp
if (GetLocalRole() == ROLE_Authority)   // server only
{
    CurrentHealth = FMath::Clamp(value, 0.f, MaxHealth);
    OnHealthUpdate();                   // server runs it; clients via OnRep_
}
```
`AActor::NetUpdateFrequency` controls how often the server replicates an actor;
clients interpolate/simulate between updates (e.g. CharacterMovementComponent).

## RPCs

A `UFUNCTION` with a direction specifier + a separate `_Implementation` body.
The actor must replicate. RPCs are **unidirectional, no return value**.

| Specifier | Executes on | Notes |
|-----------|-------------|-------|
| `Server` | the server | must be **called from the owning client** (else dropped) |
| `Client` | the owning client | called from the server |
| `NetMulticast` | server + all relevant clients | designed to be called from the server |
| `Remote` | the remote side | not exposed to Blueprint |

```cpp
// .h
UFUNCTION(Server, Reliable, WithValidation) void ServerRPC(int32 X);
UFUNCTION(Client, Reliable)                  void ClientRPC();
UFUNCTION(NetMulticast, Unreliable)          void MulticastRPC();
```
```cpp
// .cpp — implement *_Implementation (and *_Validate if WithValidation)
void A::ServerRPC_Implementation(int32 X) { /* runs on server */ }
bool A::ServerRPC_Validate(int32 X) { return X >= 0; }  // false => kicks client
void A::ClientRPC_Implementation() {}
void A::MulticastRPC_Implementation() {}
// Call the plain name; the system routes it:
ServerRPC(5);
```

**Reliability:** RPCs are **Unreliable by default**. `Reliable` re-sends until
acknowledged and preserves order, at a bandwidth cost — use sparingly (transient
cosmetic events stay Unreliable). **Validation:** `WithValidation` on a `Server`
RPC runs `_Validate` on the server first; a `false` return **disconnects the
calling client** (trust-and-verify anti-cheat). Naming convention: prefix
`Server`/`Client`/`Multicast`.

Prefer a **replicated property + RepNotify** over a multicast RPC for anything
that must stay consistent — the quick-start health example uses zero RPCs because
`CurrentHealth` replication already triggers every needed update, which is the
most bandwidth-efficient model.

## Dedicated vs listen server

- **Listen server** — a player's client also hosts (it's the authority); fine for
  casual co-op, but the host has an advantage.
- **Dedicated server** — runs **headless** (no rendering, no local player), every
  player is a remote client; ideal for competitive/large-scale. Build the
  `<Project>Server` target, cook server content, run `<Project>Server -log`
  (default `127.0.0.1:7777`, change with `-port=`). Clients connect with
  `<Project>Client 127.0.0.1:7777`. The server *build* is
  `references/packaging_and_cooking.md`'s job; the netcode here.

## Online Subsystem & sessions

`IOnlineSubsystem` is the cross-service abstraction (Steam, EOS, Xbox Live, …) —
configure the service, write the same code. Set it in `Engine.ini`:
```ini
[OnlineSubsystem]
DefaultPlatformService=Steam
```
Access via `IOnlineSubsystem::Get()`. All remote ops are **asynchronous via
delegates** (`OnCreateSessionComplete`, etc.). Feature interfaces: Session,
Friends, Achievements, Leaderboard, Presence, Purchase, Store, External UI.

**Sessions** (matchmaking) — `IOnlineSession`, owned by the subsystem, **exists
only on the server**; game code talks to it through `AGameSession` (owned by the
GameMode). Lifecycle: `CreateSession()` (with `FOnlineSessionSettings`: max
players, advertised/private, LAN, dedicated) → register players → `StartSession`
→ play → `EndSession` → `UpdateSession`/`DestroySession`, each firing its
`On…Complete` delegate. For Steam specifically use the **Online Subsystem Steam**
plugin (`...Online_Subsystem_Online_Subsystem_Steam.md`); EOS via
`...The_Online_Subsystem_EOS_Plugin.md` / the newer Online Services plugins.

## Blueprint equivalents

Same model: tick **Replicates** on the Blueprint, replicated variables get a
**Replication** dropdown (Replicated / RepNotify), and custom events expose
Replicates (Server/Client/Multicast) + Reliable. A BP `Set` on a RepNotify
variable auto-calls its OnRep. `Remote` RPCs are not exposed to BP. Lead with C++;
see `unreal-blueprints` for the BP path.

## Deeper api pages (grep)

Relevancy/priority/dormancy (`...Actor_Relevancy.md`, `...Actor_Priority.md`,
`...Actor_Network_Dormancy.md`), ownership (`...Actor_Owner_and_Owning_Connection.md`),
component replication (`...Actor_Component_Replication.md`), the Iris replication
system (`...Iris_Replication_System*.md`), Replication Graph, replays, network
debugging/profiling (`...Testing,_Debugging,_and_Optimization_*.md`), Steam
Sockets (`...Publishing_and_Deploying_Using_Steam_Sockets.md`).
