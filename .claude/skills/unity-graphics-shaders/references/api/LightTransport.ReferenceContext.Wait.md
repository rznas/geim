<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.ReferenceContext.Wait.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the event. |

### Returns

**bool** Returns true of the event completed successfully.

### Description

Wait for an asynchronous event.

The ReferenceContext implementation of the IDeviceContext.Wait method will return immediately because the context doesn't use a queue.
