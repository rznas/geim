<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.PushCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Store all camera settings.

The camera settings will be added to a so-called "stack" list, where they will stay until retrieved by a call to PopCamera. The settings will be stored in the reverse of the order in which they were added, so a call to PopCamera will retrieve the most recently stored Camera data and then remove it from the stack. A subsequent call to PopCamera will then retrieve the next most recently pushed data and so on.
