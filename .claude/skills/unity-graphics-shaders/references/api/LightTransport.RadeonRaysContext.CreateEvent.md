<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.CreateEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**EventID** ID of newly created event.

### Description

Creates a new event.

The event may be passed to IDeviceContext.ReadBuffer and IDeviceContext.WriteBuffer to track when the corresponding read or write finishes. Once the event is no longer needed, it should be destroyed using IDeviceContext.DestroyEvent.
