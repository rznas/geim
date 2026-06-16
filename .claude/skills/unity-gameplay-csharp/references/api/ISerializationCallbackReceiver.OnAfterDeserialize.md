<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ISerializationCallbackReceiver.OnAfterDeserialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this callback to transform data back into runtime data types after an object is deserialized.

Unity invokes the `OnAfterDeserialize` callback on an object after deserializing it. In this callback, you can transform the deserialized data back into your preferred runtime data type. For example, use key and value arrays to repopulate a C# `Dictionary` object.

 Refer to Custom serialization in the Manual for more information.
