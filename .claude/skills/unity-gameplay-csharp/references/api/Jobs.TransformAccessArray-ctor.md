<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.TransformAccessArray-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| capacity | The initial capacity of the array, representing the number of transforms it can hold before needing to resize its internal storage. |
| desiredJobCount | Desired job count. |

### Description

Construct a TransformAccessArray with enough memory allocated to hold the specified number of transforms, and with initial length of 0.

### Parameters

| Parameter | Description |
| --- | --- |
| transforms | Array of Transform components to initially populate TransformAccessArray. |
| desiredJobCount | Desired job count. |

### Description

Construct a TransformAccessArray from a managed array of Transform components.

### Parameters

| Parameter | Description |
| --- | --- |
| transformHandles | NativeArray of TransformHandles to initially populate TransformAccessArray |
| desiredJobCount | Desired job count. |

### Description

Construct a TransformAccessArray from a NativeArray of Transformhandles.
