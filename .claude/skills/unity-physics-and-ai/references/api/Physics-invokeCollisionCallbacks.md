<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-invokeCollisionCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether or not MonoBehaviour collision messages will be sent by the physics system.

If this property is set to `true`, MonoBehaviour.OnCollisionEnter, MonoBehaviour.OnCollisionStay, and MonoBehaviour.OnCollisionExit messages will be sent to the corresponding scripts that have these methods implemented.

If this property is set to `false`, no MonoBehaviour.OnCollisionEnter, MonoBehaviour.OnCollisionStay, or MonoBehaviour.OnCollisionExit messages will be sent. This can be beneficial when only the Physics.ContactEvent is used to read contacts as this will stop the physics system from iterating simulation results.

Note: This does not affect trigger events.
