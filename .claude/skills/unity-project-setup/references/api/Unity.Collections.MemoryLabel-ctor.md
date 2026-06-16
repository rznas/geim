<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.MemoryLabel-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| areaName | The name of the memory area. |
| objectName | The name of the object being labeled. |
| allocator | The allocator to use. Defaults to Allocator.Persistent. Only Allocator.Persistent and Allocator.Domain support memory labeling. |

### Description

Initializes a new instance of the MemoryLabel struct.

Creates a new memory label with the specified area name, object name, and allocator. Attempting to create a memory label with empty strings for the area name or object name, or with an unsupported allocator, throws an exception.

You can create multiple memory labels with the same area name and object name. However, for the purposes of memory tracking, this is equivalent to reusing a previously created label. Creating a memory label is a thread-safe operation.
