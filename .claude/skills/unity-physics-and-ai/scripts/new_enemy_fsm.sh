#!/usr/bin/env bash
# new_enemy_fsm.sh — write an enum-based FSM enemy MonoBehaviour that drives a
# NavMeshAgent (Idle / Patrol / Chase / Attack) with a perception hook.
#
# Unity 6 (6000.x). Doc-sourced from the embedded ScriptReference
# (references/api/): NavMeshAgent.SetDestination, NavMeshAgent.destination,
# Physics.Raycast. NOT compile-tested here (no Editor installed).
#
# The script only writes a .cs file (file-only; no Editor needed). The exported
# `Current` state field makes the enemy headlessly testable by unity-qa-test.
#
# Usage: new_enemy_fsm.sh <projdir> <EnemyName> [subdir]
#   default subdir: Enemies   (file lands in <projdir>/Assets/Scripts/<subdir>/)

set -euo pipefail
DIR="${1:?usage: new_enemy_fsm.sh <projdir> <EnemyName> [subdir]}"
NAME="${2:?need EnemyName (PascalCase, must match the class name)}"
SUBDIR="${3:-Enemies}"

if ! [[ "$NAME" =~ ^[A-Z][A-Za-z0-9_]*$ ]]; then
  echo "EnemyName must be PascalCase and a valid C# identifier (got: $NAME)" >&2
  exit 2
fi

DEST="$DIR/Assets/Scripts/$SUBDIR"
mkdir -p "$DEST"
FILE="$DEST/$NAME.cs"
[[ -e "$FILE" ]] && { echo "refusing to overwrite $FILE" >&2; exit 1; }

cat > "$FILE" <<EOF
using UnityEngine;
using UnityEngine.AI;

// FSM enemy: Idle -> Patrol -> Chase -> Attack, driving a NavMeshAgent.
// Requires a baked NavMesh in the scene and a GameObject tagged "Player".
// Add patrol points and a "sightBlockers" LayerMask of walls in the Inspector.
[RequireComponent(typeof(NavMeshAgent))]
public class $NAME : MonoBehaviour
{
    public enum State { Idle, Patrol, Chase, Attack }

    // Exposed (read-only) so a headless test can assert the enemy reaches a state.
    [field: SerializeField] public State Current { get; private set; } = State.Idle;

    [Header("Ranges")]
    [SerializeField] private float aggroRange  = 12f;   // start chasing within this
    [SerializeField] private float attackRange = 2f;    // switch to attack within this
    [SerializeField] private float loseRange   = 18f;   // sticky: keep chasing out to here

    [Header("Patrol")]
    [SerializeField] private Transform[] patrolPoints;
    [SerializeField] private float patrolArriveDistance = 0.5f;

    [Header("Perception")]
    [SerializeField] private LayerMask sightBlockers;   // walls that break line-of-sight

    private NavMeshAgent _agent;
    private Transform _player;
    private int _patrolIndex;

    private void Awake()
    {
        _agent = GetComponent<NavMeshAgent>();
    }

    private void Start()
    {
        var go = GameObject.FindWithTag("Player");
        if (go != null) _player = go.transform;
    }

    private void Update()
    {
        Transition();
        Act();
    }

    // --- decide which state we are in -------------------------------------
    private void Transition()
    {
        if (_player == null) { Current = State.Idle; return; }

        float d = Vector3.Distance(transform.position, _player.position);
        bool sees = CanSeePlayer(d);

        if (sees && d <= attackRange)                          Current = State.Attack;
        else if (sees && d <= aggroRange)                      Current = State.Chase;
        else if (Current == State.Chase && d <= loseRange)     Current = State.Chase; // sticky
        else                                                   Current = State.Patrol;
    }

    // --- do the thing for the current state -------------------------------
    private void Act()
    {
        switch (Current)
        {
            case State.Idle:
                _agent.isStopped = true;
                break;

            case State.Patrol:
                _agent.isStopped = false;
                Patrol();
                break;

            case State.Chase:
                _agent.isStopped = false;
                // SetDestination returns false if there's no valid NavMesh point.
                _agent.SetDestination(_player.position);
                break;

            case State.Attack:
                _agent.isStopped = true;
                FacePlayer();
                // TODO: fire / swing on a cooldown here.
                break;
        }
    }

    // --- perception: distance + line-of-sight raycast ---------------------
    private bool CanSeePlayer(float dist)
    {
        if (_player == null || dist > aggroRange) return false;

        Vector3 dir = (_player.position - transform.position).normalized;
        // If a "sightBlockers" collider is between us and the player, LOS is broken.
        return !Physics.Raycast(transform.position, dir, dist, sightBlockers);
    }

    private void Patrol()
    {
        if (patrolPoints == null || patrolPoints.Length == 0) { _agent.isStopped = true; return; }

        if (!_agent.pathPending && _agent.remainingDistance <= patrolArriveDistance)
            _patrolIndex = (_patrolIndex + 1) % patrolPoints.Length;

        _agent.SetDestination(patrolPoints[_patrolIndex].position);
    }

    private void FacePlayer()
    {
        if (_player == null) return;
        Vector3 flat = _player.position - transform.position;
        flat.y = 0f;
        if (flat.sqrMagnitude > 0.001f)
            transform.rotation = Quaternion.LookRotation(flat);
    }

    // Draw the ranges in the Editor for tuning.
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow; Gizmos.DrawWireSphere(transform.position, aggroRange);
        Gizmos.color = Color.red;    Gizmos.DrawWireSphere(transform.position, attackRange);
        Gizmos.color = Color.gray;   Gizmos.DrawWireSphere(transform.position, loseRange);
    }
}
EOF

echo "Wrote $FILE"
echo "Next:"
echo "  - Add a NavMeshAgent (the script RequireComponents one) and bake a NavMesh."
echo "  - Tag the player GameObject \"Player\"."
echo "  - In the Inspector set patrolPoints and the sightBlockers LayerMask (your walls)."
