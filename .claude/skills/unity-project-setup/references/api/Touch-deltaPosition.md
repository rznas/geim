<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Touch-deltaPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The position delta since last change in pixel coordinates.

The absolute position of the touch is recorded periodically and available in the position property. The deltaPosition value is a Vector2 in pixel coordinates that represents the difference between the touch position recorded on the most recent update and that recorded on the previous update. The deltaTime value gives the time that elapsed between the previous and current updates; you can calculate the touch's speed of motion by dividing deltaPosition.magnitude by deltaTime.

Additional resources: deltaTime.
