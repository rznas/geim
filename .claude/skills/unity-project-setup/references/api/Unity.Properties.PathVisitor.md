<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PathVisitor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper visitor to visit a single property using a specified PropertyPath.

### Properties

| Property | Description |
| --- | --- |
| Path | The path to visit. |
| ReadonlyVisit | Returns whether or not the visitor will write back values along the path. |
| ReturnCode | Returns the error code encountered while visiting the provided path. |

### Public Methods

| Method | Description |
| --- | --- |
| Reset | Resets the state of the visitor. |

### Protected Methods

| Method | Description |
| --- | --- |
| VisitPath | Method called when the visitor has successfully visited the provided path. |
