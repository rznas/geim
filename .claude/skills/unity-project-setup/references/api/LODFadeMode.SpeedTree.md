<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LODFadeMode.SpeedTree.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

By specifying this mode, your LODGroup will perform a SpeedTree-style LOD fading scheme:
For all the mesh LODs other than the last (most crude) mesh LOD, the fade factor is calculated as the percentage of the object's current screen height, compared to the whole range of the LOD. It is 1, if the camera is right at the position where the previous LOD switches out and 0, if the next LOD is just about to switch in.
For the last mesh LOD and the billboard LOD, the cross-fade mode is used.
