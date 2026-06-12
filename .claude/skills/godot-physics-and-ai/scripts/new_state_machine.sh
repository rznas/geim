#!/usr/bin/env bash
# new_state_machine.sh — write an enum-based FSM enemy script (CharacterBody2D).
#
# Produces a compile-ready <Enemy>.cs with Idle/Patrol/Chase/Attack states, a
# perception hook (distance + RayCast LOS), and the struct-copy-safe movement
# loop. The exported `Current` state makes the enemy headlessly testable.
#
# Usage: new_state_machine.sh <projdir> <EnemyName> [subdir]
#   default subdir: actors

set -euo pipefail
DIR="${1:?usage: new_state_machine.sh <projdir> <EnemyName> [subdir]}"
NAME="${2:?need EnemyName (PascalCase)}"
SUBDIR="${3:-actors}"

if ! [[ "$NAME" =~ ^[A-Z][A-Za-z0-9_]*$ ]]; then
  echo "EnemyName must be PascalCase (got: $NAME)" >&2; exit 2
fi

DEST="$DIR/scripts/$SUBDIR"
mkdir -p "$DEST"
FILE="$DEST/$NAME.cs"
[[ -e "$FILE" ]] && { echo "refusing to overwrite $FILE" >&2; exit 1; }

cat > "$FILE" <<EOF
using Godot;

public partial class $NAME : CharacterBody2D
{
    public enum State { Idle, Patrol, Chase, Attack }

    // Exported so a headless test can assert the enemy reaches the right state.
    [Export] public State Current { get; private set; } = State.Idle;

    [Export] public float Speed = 120f;
    [Export] public float AggroRange = 200f;
    [Export] public float AttackRange = 40f;
    [Export] public float LoseRange = 320f;   // sticky chase distance

    private Node2D _player;
    private RayCast2D _los;

    public override void _Ready()
    {
        // Player should be in the "player" group: AddToGroup("player") in its _Ready.
        _player = GetTree().GetFirstNodeInGroup("player") as Node2D;
        _los = GetNodeOrNull<RayCast2D>("LineOfSight");
    }

    public override void _PhysicsProcess(double delta)
    {
        Transition();
        Act(delta);
    }

    private void Transition()
    {
        if (_player is null) { Current = State.Idle; return; }

        float d = GlobalPosition.DistanceTo(_player.GlobalPosition);
        bool sees = CanSeePlayer();

        if (sees && d <= AttackRange)      Current = State.Attack;
        else if (sees && d <= AggroRange)  Current = State.Chase;
        else if (Current == State.Chase && d <= LoseRange) Current = State.Chase;
        else                               Current = State.Patrol;
    }

    private void Act(double delta)
    {
        Vector2 v = Velocity;
        switch (Current)
        {
            case State.Idle:
            case State.Attack:
                v = Vector2.Zero;
                break;
            case State.Chase:
                v = GlobalPosition.DirectionTo(_player.GlobalPosition) * Speed;
                break;
            case State.Patrol:
                // TODO: sweep between patrol markers; idle for now.
                v = Vector2.Zero;
                break;
        }
        Velocity = v;
        MoveAndSlide();
    }

    private bool CanSeePlayer()
    {
        if (_los is null || _player is null) return false;
        _los.TargetPosition = ToLocal(_player.GlobalPosition);
        _los.ForceRaycastUpdate();
        return _los.IsColliding() && _los.GetCollider() == _player;
    }
}
EOF

echo "Wrote $FILE  (res://scripts/$SUBDIR/$NAME.cs)"
echo "Add a RayCast2D child named 'LineOfSight' for LOS. Put the player in group \"player\"."
