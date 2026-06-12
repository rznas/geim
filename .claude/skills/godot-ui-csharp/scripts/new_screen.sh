#!/usr/bin/env bash
# new_screen.sh — scaffold a Control-rooted UI screen (.tscn + .cs).
#
# Writes a full-rect Control scene with a centered VBox (title + two buttons) and
# a matching C# Control script wiring the buttons' Pressed signals. A working
# menu skeleton to fill in. Verified format for Godot 4.6.
#
# Usage: new_screen.sh <projdir> <ScreenName>   (PascalCase, e.g. MainMenu)

set -euo pipefail
DIR="${1:?usage: new_screen.sh <projdir> <ScreenName>}"
NAME="${2:?need ScreenName (PascalCase)}"

if ! [[ "$NAME" =~ ^[A-Z][A-Za-z0-9_]*$ ]]; then
  echo "ScreenName must be PascalCase (got: $NAME)" >&2; exit 2
fi

mkdir -p "$DIR/scripts/ui" "$DIR/scenes/ui"
CS="$DIR/scripts/ui/$NAME.cs"
TSCN="$DIR/scenes/ui/$NAME.tscn"
[[ -e "$CS" || -e "$TSCN" ]] && { echo "refusing to overwrite existing $NAME files" >&2; exit 1; }

cat > "$CS" <<EOF
using Godot;

public partial class $NAME : Control
{
    [Signal] public delegate void StartPressedEventHandler();
    [Signal] public delegate void QuitPressedEventHandler();

    public override void _Ready()
    {
        GetNode<Button>("%StartButton").Pressed += () => EmitSignal(SignalName.StartPressed);
        GetNode<Button>("%QuitButton").Pressed += () => EmitSignal(SignalName.QuitPressed);
        GetNode<Button>("%StartButton").GrabFocus();   // gamepad/keyboard entry point
    }
}
EOF

cat > "$TSCN" <<EOF
[gd_scene load_steps=2 format=3 uid="uid://b${NAME,,}screen01"]

[ext_resource type="Script" path="res://scripts/ui/$NAME.cs" id="1"]

[node name="$NAME" type="Control"]
layout_mode = 3
anchors_preset = 15
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource("1")

[node name="Center" type="CenterContainer" parent="."]
layout_mode = 1
anchors_preset = 15
anchor_right = 1.0
anchor_bottom = 1.0

[node name="VBox" type="VBoxContainer" parent="Center"]
layout_mode = 2

[node name="Title" type="Label" parent="Center/VBox"]
layout_mode = 2
text = "$NAME"
horizontal_alignment = 1

[node name="StartButton" type="Button" parent="Center/VBox"]
unique_name_in_owner = true
layout_mode = 2
text = "Start"

[node name="QuitButton" type="Button" parent="Center/VBox"]
unique_name_in_owner = true
layout_mode = 2
text = "Quit"
EOF

echo "Wrote $CS  and  $TSCN"
echo "  scene: res://scenes/ui/$NAME.tscn  (Control, full-rect, centered VBox)"
echo "  %StartButton / %QuitButton are scene-unique nodes (the % accessor)."
