<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.BlendTreeType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of blending algorithm that the blend tree uses.

### Properties

| Property | Description |
| --- | --- |
| Simple1D | Basic blending using a single parameter. |
| SimpleDirectional2D | Best used when your motions represent different directions, such as "walk forward", "walk backward", "walk left", and "walk right", or "aim up", "aim down", "aim left", and "aim right". |
| FreeformDirectional2D | This blend type is used when your motions represent different directions, however you can have multiple motions in the same direction, for example "walk forward" and "run forward". |
| FreeformCartesian2D | Best used when your motions do not represent different directions. |
| Direct | Direct control of blending weight for each node. |
