# .tscn / .tres text format (Godot 4)

Both are plain text and safe to author or edit by hand. This is the verified
Godot 4 format (`format=3`). Getting `load_steps` and `ExtResource`/`SubResource`
ids consistent is the whole game.

## Anatomy of a .tscn

```
[gd_scene load_steps=3 format=3 uid="uid://bxyz1234abcd"]

[ext_resource type="Script" path="res://scripts/Player.cs" id="1_script"]
[ext_resource type="Texture2D" path="res://assets/art/player.png" id="2_tex"]

[sub_resource type="RectangleShape2D" id="Shape_body"]
size = Vector2(32, 48)

[node name="Player" type="CharacterBody2D"]
script = ExtResource("1_script")

[node name="Sprite" type="Sprite2D" parent="."]
texture = ExtResource("2_tex")

[node name="Collision" type="CollisionShape2D" parent="."]
shape = SubResource("Shape_body")
```

Rules:
- **`load_steps`** = number of `ext_resource` + `sub_resource` blocks + 1. Godot
  recomputes on save; keep it ≥ the real count or loading errors.
- **`uid`** is a stable identifier — make it unique per scene. Format
  `uid://` + ~12 base-ish chars.
- **`ext_resource`** references a file; the node uses it via
  `ExtResource("<id>")`. Ids are arbitrary strings but must match exactly.
- **`sub_resource`** is an inline resource (a shape, material, gradient) defined
  in this file; referenced via `SubResource("<id>")`.
- **`[node]`** declares a node. `parent="."` = child of root; `parent="Sprite"`
  = nested deeper; root node has no `parent`. The **order matters**: a parent
  must appear before its children.
- Property lines (`texture = ...`, `position = Vector2(10, 20)`) set exported or
  built-in properties using Godot's value literals: `Vector2(x, y)`,
  `Color(r,g,b,a)`, `true`, `"strings"`, `&"StringName"`, `NodePath("...")`.

## Instancing a sub-scene inside a scene

To place a saved scene (e.g. `Coin.tscn`) as a child:

```
[ext_resource type="PackedScene" path="res://scenes/Coin.tscn" id="1_coin"]

[node name="Coin1" parent="." instance=ExtResource("1_coin")]
position = Vector2(64, 0)
```

`instance=ExtResource(...)` is what makes it an instance; you can override the
instanced scene's exported properties below the node line.

## Custom data resource (.tres)

For designer-tunable data, make a `[GlobalClass] : Resource` (see
`new_node_script.sh ... Resource`), then author a `.tres`:

```
[gd_resource type="Resource" script_class="EnemyStats" load_steps=2 format=3 uid="uid://b00enemystats"]

[ext_resource type="Script" path="res://scripts/data/EnemyStats.cs" id="1"]

[resource]
script = ExtResource("1")
Name = "Goblin"
Value = 30
```

Property names use the C# member names (`Name`, `Value` — PascalCase, exactly as
declared with `[Export]`). Load it with
`GD.Load<EnemyStats>("res://data/goblin.tres")` or accept it as an `[Export]
EnemyStats Stats` on a node and assign in the inspector / scene file.

## Setting the input map in project.godot

```
[input]

jump={
"deadzone": 0.5,
"events": [Object(InputEventKey,"physical_keycode":32)]
}
```

Easier to add via the editor's Input Map UI, but this is the text form if you
must script it. `32` is the keycode for Space.

## Why hand-authoring is fine

Godot never adds hidden metadata to these files. What you write is what loads. A
malformed scene fails loudly on `--import` or run, so pair any hand-edit with the
project-setup skill's `build_and_check.sh` to catch mistakes immediately.
