#!/usr/bin/env bash
# new_node_script.sh — write a correctly-formed Godot C# node script.
#
# Guarantees the two things Godot is picky about: the class name equals the file
# name, and the class is `partial` deriving from a Godot type. Stubs the common
# lifecycle overrides so you start from a working node, not a blank file.
#
# Usage:
#   new_node_script.sh <projdir> <ClassName> <BaseType> [subdir]
#     BaseType: Node, Node2D, Node3D, CharacterBody2D, Control, Resource, ...
#     subdir:   under res://scripts/ (default: none)
#
# Example:
#   new_node_script.sh /path/to/proj Player CharacterBody2D actors
#   -> /path/to/proj/scripts/actors/Player.cs  (res://scripts/actors/Player.cs)

set -euo pipefail
DIR="${1:?usage: new_node_script.sh <projdir> <ClassName> <BaseType> [subdir]}"
CLASS="${2:?need ClassName}"
BASE="${3:?need BaseType (Node, Node2D, CharacterBody2D, Control, Resource, ...)}"
SUBDIR="${4:-}"

if ! [[ "$CLASS" =~ ^[A-Z][A-Za-z0-9_]*$ ]]; then
  echo "ClassName must be PascalCase (got: $CLASS)" >&2; exit 2
fi

DEST="$DIR/scripts${SUBDIR:+/$SUBDIR}"
mkdir -p "$DEST"
FILE="$DEST/$CLASS.cs"
if [[ -e "$FILE" ]]; then echo "refusing to overwrite $FILE" >&2; exit 1; fi

# Resource subclasses don't have a scene-tree lifecycle; emit a data-holder stub.
if [[ "$BASE" == "Resource" ]]; then
  cat > "$FILE" <<EOF
using Godot;

// A custom data resource. [GlobalClass] makes it appear in the editor's
// "New Resource" dialog and as a typed [Export] target. Save instances as .tres.
[GlobalClass]
public partial class $CLASS : Resource
{
    [Export] public string Name { get; set; } = "";
    [Export] public int Value { get; set; }
}
EOF
else
  cat > "$FILE" <<EOF
using Godot;

public partial class $CLASS : $BASE
{
    // Called once when the node enters the scene tree.
    public override void _Ready()
    {
    }

    // Called every rendered frame. delta = seconds since last frame.
    public override void _Process(double delta)
    {
    }
}
EOF
fi

REL="res://scripts${SUBDIR:+/$SUBDIR}/$CLASS.cs"
echo "Wrote $FILE"
echo "  resource path: $REL"
echo "  attach in a .tscn with:  [ext_resource type=\"Script\" path=\"$REL\" id=\"1\"]  then  script = ExtResource(\"1\")"
