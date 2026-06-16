<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessAnimation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The root GameObject of the imported Asset. |
| clip | The current animation clip. |

### Description

This function is called when an AnimationClip has finished importing.

This function is called for every AnimationClip in an imported asset file. This lets you modify the imported AnimationClip before it is written to disk.
