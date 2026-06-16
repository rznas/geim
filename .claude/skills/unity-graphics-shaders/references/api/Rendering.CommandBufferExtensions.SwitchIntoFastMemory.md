<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBufferExtensions.SwitchIntoFastMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rid | The render target to put into fast GPU memory. |
| fastMemoryFlags | The memory layout to use if only part of the render target is put into fast GPU memory, either because of the residency parameter or because of fast GPU memory availability. |
| residency | The amount of the render target to put into fast GPU memory. Valid values are 0.0f - 1.0f inclusive. A value of 0.0f is equal to none of the render target, and a value of 1.0f is equal to the whole render target. |
| copyContents | When this value is true, Unity copies the existing contents of the render target into fast memory. When this value is false, Unity does not copy the existing contents of the render target into fast memory. Set this value to true if you plan to add to the existing contents, and set it to false if you plan to overwrite or clear the existing contents. Where possible, set this value to false for better performance. |

### Description

Adds a command to put a given render target into fast GPU memory.

On certain console platforms, you can put render targets in fast GPU memory for improved rendering performance.

On platforms that do not support fast GPU memory, this function does nothing.

On platforms that support fast GPU memory, the results of this function depend on the state of the render target and the amount of fast GPU memory available at the time that the graphics API executes this command. If the render target is not already in fast GPU memory, Unity puts as much of the render target as possible into fast GPU memory, up to the amount specified in the `residency` parameter. If Unity cannot put the render target into fast GPU memory, either because it is already in fast GPU memory or because no fast GPU memory is available, Unity does nothing. There is no performance cost in this case.

Note that it is not possible to determine in advance whether a render target is already in fast GPU memory, or how much fast GPU memory is available.

Additional resources: CommandBufferExtensions.SwitchOutOfFastMemory
