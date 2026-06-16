<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorJsonUtility.ToJson.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object to convert to JSON form. |
| prettyPrint | If true, format the output for readability. If false, format the output for minimum size. Default is false. |

### Returns

**string** The object's data in JSON format.

### Description

Generate a JSON representation of an object.

This is similar to JsonUtility.ToJson, but it supports any engine object. The output is similar to the properties exposed via the SerializedObject API, or as found in the YAML-serialized form of the object.

If the object contains fields with references to other Unity objects, those references are serialized by recording the asset guid and local file id for each reference. This string can be saved, then deserialized in another session of the Unity Editor, and the references are resolved correctly. However only objects that are located in an non-scene asset file can be referenced. References to objects within a scene, including the same scene, will not be serialized.

Additional resources: JsonUtility.ToJson, AssetDatabase.TryGetGUIDAndLocalFileIdentifier
