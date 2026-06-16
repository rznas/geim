<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.IsCompleted.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the event to query. |

### Returns

**bool** True if the asynchronous operation has completed.

### Description

Returns true if the asynchronous operation completed.

This method returns immediately and does not wait for the operation to complete. Use Flush to force the device implementation to start processing commands. Use IDeviceContext.Wait to busy-wait for a specific event.
