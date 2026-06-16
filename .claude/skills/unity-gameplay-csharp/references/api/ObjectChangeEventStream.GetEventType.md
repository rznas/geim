<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEventStream.GetEventType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventIdx | The index of the event whose type should be returned. |

### Returns

**ObjectChangeKind** The type of the event at the specified index.

### Description

Returns the type of the event at the specified index.

Use this function to query the type of an event before using any of the other functions (e.g. ObjectChangeEventStream.GetChangeAssetObjectEvent) to retrieve the event data.
