<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEventStream.GetChangeGameObjectOrComponentPropertiesEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventIdx | The index of the event to get the data for. |
| data | The data associated with the event. |

### Description

Retrieves the event data at the given index as a ChangeAssetObjectPropertiesEventArgs. Throws an exception if the event type requested does not match the event stored in the stream.
