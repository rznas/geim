<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect-outputEventReceived.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Output event are reported trough this callback.

If you need to store the VFXEventAttribute in the VisualEffect.OutputEventArgs, use the copy constructor of VFXEventAttribute or retrieve the value immediately. This is necessary because Unity recycles the VFXEventAttribute.
