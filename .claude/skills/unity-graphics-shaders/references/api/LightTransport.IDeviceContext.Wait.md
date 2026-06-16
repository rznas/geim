<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.Wait.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the event. |

### Returns

**bool** Returns true if the event completed successfully.

### Description

Wait for an asynchronous event.

This is a blocking method which stalls the current CPU thread until the operation represented by the EventID is complete. Adding a stall can have a significant performance impact during regular execution. To avoid stalls, call this function at the end of your sequence of operations.
