<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Touch-fingerId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The unique index for the touch.

All current touches are reported in the Input.touches array or by using the Input.GetTouch function with the equivalent array index. However, the array index is not guaranteed to be the same from one frame to the next. The `fingerId` value, however, consistently refers to the same touch across frames. This ID value is very useful when analysing gestures and is more reliable than identifying fingers by their proximity to previous position, etc.

Touch.fingerId is not the same as "first" touch, "second" touch and so on. It is merely a unique id per gesture. You cannot make any assumptions about fingerId and the number of fingers actually on screen, since virtual touches will be introduced to handle the fact that the touch structure is constant for an entire frame (while in reality the number of touches obviously might not be true, e.g. if multiple tappings occur within a single frame).
