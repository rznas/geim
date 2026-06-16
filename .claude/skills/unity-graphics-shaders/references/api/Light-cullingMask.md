<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-cullingMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is used to light certain objects in the Scene selectively.

A GameObject will only be illuminated by a light if that light's `cullingMask/` includes the layer chosen for the GameObject (ie, the mask bit for the layer must be set to 1 for the object to receive any light). See Layers for more information about layer masking. Additional resources: Light component.
