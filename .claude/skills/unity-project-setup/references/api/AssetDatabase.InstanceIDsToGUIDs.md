<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.InstanceIDsToGUIDs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets a NativeArray of UnityEditor.GUIDs for every valid Instance ID that is an asset.

Both arrays must be the same length and initialised before calling. The caller is responsible for the lifetime of these arrays. If an Instance ID is not valid or does not refer to an Object that is an asset, the GUID will be set to default.
