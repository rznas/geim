<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ISerializationCallbackReceiver.OnBeforeSerialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this callback to transform data into serializable data types immediately before an object is serialized.

Unity invokes the `OnBeforeSerialize` callback on an object before serializing it. In this callback, you can transform your data into something Unity understands. For example, to serialize a C# `Dictionary`, copy the data from the `Dictionary` object into an array of keys and an array of values.

Refer to Custom serialization in the Manual for more information.

**Note:** Unity calls `OnBeforeSerialize` before recompiling scripts in a domain reload, so any changes made to code in this method won't take effect until the second invocation of the callback following the change, in other words after a full serialization and domain reload cycle. For more information, refer to Details of disabling domain and scene reload in the Manual.
