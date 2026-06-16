<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.CopySerializedManagedFieldsOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The object to copy data from. |
| dest | The object to copy data to. |

### Description

Copies the serializable fields from one managed object to another.

This is similar to CopySerialized, but you can use it with any two managed objects, rather than two instances of the same Object subclass.

`CopySerializedManagedFieldsOnly` copies all fields supported by the Unity serializer. If the destination object is not of the same class as the source object, then the function matches fields by name, or by using the FormerlySerializedAs attribute. The function does not modify any fields on the destination object which are not serializable, or which do not have corresponding fields in the source object.

If the source object implements the ISerializationCallbackReceiver interface, then its OnBeforeSerialize method is called before any data is read. Similarly, if the destination object implements the ISerializationCallbackReceiver, then its OnAfterDeserialize method is called after data has been copied into its fields.

`CopySerializedManagedFieldsOnly` only copies fields defined in managed code. This means that if you attempt to copy engine objects such as Transform or Light, `CopySerializedManagedFieldsOnly` does not copy any data, since all of their serializable fields are defined in native code.
