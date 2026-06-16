<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-reuseCollisionCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the garbage collector should reuse only a single instance of a Collision2D type for all collision callbacks.

When an MonoBehaviour.OnCollisionEnter2D, MonoBehaviour.OnCollisionStay2D or MonoBehaviour.OnCollisionExit2D collision callback occurs, the Collision2D object passed to it is created for each individual callback. This means the garbage collector has to remove each object, which reduces performance.

When this option is true, only a single instance of the Collision2D type is created and reused for each individual callback. This reduces waste for the garbage collector to handle and improves performance.

You would only set this option to false if the Collision2D object is referenced outside of the collision callback for processing later, so recycling the Collision2D object is not required.
