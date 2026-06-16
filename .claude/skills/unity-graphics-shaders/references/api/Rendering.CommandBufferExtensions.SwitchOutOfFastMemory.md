<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBufferExtensions.SwitchOutOfFastMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rid | The render target to remove from fast GPU memory. |
| copyContents | When this value is true, Unity copies the existing contents of the render target when it removes it from fast GPU memory. When this value is false, Unity does not copy the existing contents of the render target when it removes it from fast GPU memory. Set this value to true if you plan to add to the existing contents, and set it to false if you plan to overwrite or clear the existing contents. Where possible, set this value to false for better performance. |

### Description

Adds a command to remove a given render target from fast GPU memory.

On certain console platforms, you can put render targets in fast GPU memory for improved rendering performance.

On platforms that do not support fast GPU memory, this function does nothing.

On platforms that support fast GPU memory, the results of this function depend on the state of the render target at the time that the graphics API executes this command. If the render target is in fast GPU memory, Unity removes the render target from fast GPU memory. If the render target is not in fast GPU memory, Unity does nothing. There is no performance cost in this case.

Additional resources: CommandBufferExtensions.SwitchIntoFastMemory
