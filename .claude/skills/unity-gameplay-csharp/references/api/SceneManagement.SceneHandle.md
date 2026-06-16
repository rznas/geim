<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handle to a scene. This is a wrapper around an EntityId.

### Static Properties

| Property | Description |
| --- | --- |
| None | The default value of a SceneHandle that is empty. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Test two SceneHandle for equality. |
| GetHashCode | The hash code of the SceneHandle from the EntityId it wraps. |
| GetRawData | Gets the raw data of a SceneHandle (prefer to store the SceneHandle directly, and only use this as a fallback). |
| ToString | Returns a string representing the EntityId wrapped by the SceneHandle. |

### Static Methods

| Method | Description |
| --- | --- |
| FromRawData | Converts a ulong (raw data), into a SceneHandle. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Test two SceneHandle for inequality. |
| operator == | Test two SceneHandle for equality. |
