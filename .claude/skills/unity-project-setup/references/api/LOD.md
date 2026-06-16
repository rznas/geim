<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LOD.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A structure that you can pass to LODGroup.SetLODs to configure a particular LOD level on a LODGroup.

### Properties

| Property | Description |
| --- | --- |
| fadeTransitionWidth | Width of the cross-fade transition zone (proportion to the current LOD's whole length) [0-1]. Only used if it's not animated. |
| renderers | List of renderers for this LOD level. |
| screenRelativeTransitionHeight | The screen relative height to use for the transition [0-1]. |

### Constructors

| Constructor | Description |
| --- | --- |
| LOD | Construct a LOD. |
