<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-reuseCollisionCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the garbage collector should reuse only a single instance of a Collision type for all collision callbacks.

When an MonoBehaviour.OnCollisionEnter, MonoBehaviour.OnCollisionStay or MonoBehaviour.OnCollisionExit collision callback occurs, the Collision object passed to it is created for each individual callback. This means the garbage collector has to remove each object, which reduces performance.

When this option is true, only a single instance of the Collision type is created and reused for each individual callback. This reduces waste for the garbage collector to handle and improves performance.

You would only set this option to false if the Collision object is referenced outside of the collision callback for processing later, so recycling the Collision object is not desired.
