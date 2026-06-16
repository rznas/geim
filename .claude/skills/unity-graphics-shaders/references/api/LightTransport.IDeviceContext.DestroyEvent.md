<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.DestroyEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the event to destroy. |

### Description

Destroy the event with the given ID. You should call this to free temporary resources associated with an event. Attempting to use the event after it has been destroyed, for example using IDeviceContext.Wait or IDeviceContext.IsCompleted will result in undefined behavior.
