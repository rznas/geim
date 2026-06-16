<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.EventDataSerialization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Serialization type for sending a message, with arguments, using the EventService. For more information about argument serialization, see ChannelService.Broadcast and ChannelService.Emit.

### Properties

| Property | Description |
| --- | --- |
| StandardJson | Use normal JSON to send a message using the [[EventService]. The receiving handler gets JSON objects (Dictionary<string, object>, List<object>, primitive types) as arguments of his ChannelHandler. |
| JsonUtility | Use JsonUtility.ToJson to serialize a message argument. Additional metadata is added to the message to specify which type to convert the JSON to when it is received. |
