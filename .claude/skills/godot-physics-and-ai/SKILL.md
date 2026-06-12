---
name: godot-physics-and-ai
description: >
  Implement movement, collisions, and NPC/enemy AI in a Godot 4.6 C# game.
  Use this whenever you are building character movement (CharacterBody2D/3D,
  move_and_slide, gravity, jumping), collision and hit detection (Area2D/3D,
  collision layers/masks, RayCast, shapes), rigid-body or physics-driven
  objects, pathfinding and navigation (NavigationAgent, NavigationRegion), or
  enemy/NPC behavior (state machines, perception, steering, chase/patrol). Reach
  for it any time the task involves things bumping into each other, a character
  that walks on floors and slopes, "make the enemy follow the player", raycasts,
  or detection areas. It has the verified C# physics idioms and the
  layer/mask model that trips everyone up. Covers Gameplay + AI Programmer work.
  Assumes a buildable project (godot-project-setup) and basic node scripting
  (godot-gameplay-csharp).
---

# Godot Physics & AI in C#

Two tightly linked jobs: making things move and collide believably, and making
non-player things act. They share the physics engine, so they share a skill.

## Pick the right body type — this decides everything

| Node | Use for | Moved by |
|------|---------|----------|
| `CharacterBody2D/3D` | players, enemies, anything you steer by code | `MoveAndSlide()` with `Velocity` |
| `RigidBody2D/3D` | physics props: crates, balls, ragdolls | the physics engine (apply forces/impulses, don't set position) |
| `StaticBody2D/3D` | floors, walls, non-moving colliders | nothing |
| `Area2D/3D` | detection zones, triggers, hitboxes — **overlap, not collision** | code |

The #1 mistake is fighting the engine: never set `Position` on a RigidBody every
frame, and never expect an Area to *stop* anything — it only reports overlaps.

## Movement (CharacterBody)

The canonical loop lives in `references/movement_and_collision.md`: read input →
set `Velocity` (remember the struct-copy rule) → `MoveAndSlide()` → query
`IsOnFloor()`, `GetSlideCollisionCount()`. Gravity, jumping, slopes, and
one-way platforms are all there with verified C#.

## Collision layers & masks (the thing everyone gets wrong)

A body is **on** layers (what it *is*) and **scans** a mask (what it *detects*).
For A to detect B, A's mask must include a layer B is on. They are independent
bitmasks — set both sides deliberately. Full truth table and the C#
`CollisionLayer`/`CollisionMask` bit API are in
`references/movement_and_collision.md`. Define named layers in
`project.godot` under `[layer_names]` so masks read as intent, not magic numbers.

## Detection & perception (Area, RayCast)

- **Area2D/3D** for "is something inside this zone": connect `BodyEntered` /
  `AreaEntered` signals (as C# events).
- **RayCast2D/3D** for line-of-sight, ground checks, shooting: enable it, set
  `TargetPosition`, read `IsColliding()` / `GetCollider()`.

## NPC / enemy AI

Two layers, both in `references/ai_patterns.md`:

1. **Behavior** — a clean C# **state machine** (Idle/Patrol/Chase/Attack). The
   reference gives a small, idiomatic enum+switch FSM that's easy to extend and
   debug, plus when to graduate to a node-based or hierarchical FSM. Perception
   feeds transitions (RayCast LOS, Area aggro range, distance checks).
2. **Movement** — getting there. For grid/open worlds use **NavigationAgent2D/3D**
   over a baked **NavigationRegion**: set `TargetPosition`, call
   `GetNextPathPosition()`, steer your CharacterBody toward it each physics tick.
   The reference covers baking nav, avoidance, and the "agent path is empty"
   gotchas.

Keep AI deterministic and testable: drive transitions off state you can assert
on, so `godot-qa-headless` can verify "enemy enters Chase when player within
range" without a GUI.

## Scaffolding

`scripts/new_state_machine.sh <projdir> <EnemyName>` writes a ready-to-extend
enum-based FSM script (`<EnemyName>.cs` on a CharacterBody2D) with Idle/Patrol/
Chase stubs and a perception hook. Build with the project-setup
`build_and_check.sh`.

## Debugging physics

Run with `--debug-collisions` (shows collision shapes) and `--debug-navigation`
(shows nav polygons). `references/troubleshooting.md` covers the usual
suspects: nothing collides (mask mismatch), body falls through floor (no
collision shape / missing StaticBody), `MoveAndSlide` does nothing (Velocity not
set / not a CharacterBody), nav agent won't move (region not baked).
