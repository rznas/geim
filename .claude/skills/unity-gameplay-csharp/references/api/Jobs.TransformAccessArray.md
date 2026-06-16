<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.TransformAccessArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

TransformAccessArray.

### Properties

| Property | Description |
| --- | --- |
| capacity | Returns array capacity. |
| isCreated | isCreated. |
| length | Length. |
| this[int] | Array indexer. |

### Constructors

| Constructor | Description |
| --- | --- |
| TransformAccessArray | Construct a TransformAccessArray with enough memory allocated to hold the specified number of transforms, and with initial length of 0. |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Add Transform to the end of the TransformAccessArray. |
| Dispose | Dispose. |
| GetTransformHandle | Get a TransformHandle for the transform at the specified index in the TransformAccessArray. |
| RemoveAtSwapBack | Removes an item at index. |
| SetTransformHandle | Set transform at the specified index from the TransformHandle provided. |
| SetTransformHandles | Replace entire contents of TransformAccessArray with provided transforms. |
| SetTransforms | Replace entire contents of TransformAccessArray with provided transforms. |

### Static Methods

| Method | Description |
| --- | --- |
| Allocate | Allocate. |
