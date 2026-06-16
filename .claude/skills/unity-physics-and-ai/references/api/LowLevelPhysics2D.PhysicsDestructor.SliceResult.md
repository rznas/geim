<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsDestructor.SliceResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The result of a slice operation. This must be disposed of after use otherwise leaks will occur. See PhysicsDestructor.Slice.

### Properties

| Property | Description |
| --- | --- |
| leftGeometry | The geometry that was sliced on the "left" of the line. |
| rightGeometry | The geometry that was sliced on the "right" of the line. |
| transform | The transform used when slicing. All returned geometry uses this. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Dispose of the slice result. |
