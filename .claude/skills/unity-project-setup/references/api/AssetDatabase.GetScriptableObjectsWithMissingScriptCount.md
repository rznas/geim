<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetScriptableObjectsWithMissingScriptCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The path to the asset file to check. |

### Returns

**int** The number of ScriptableObject instances in the file which are missing their associated scripts.

### Description

Checks how many unloadable ScriptableObject instances are present in the specified asset.

If you delete the script which defines a type of ScriptableObject, all instances of that ScriptableObject in your assets become unloadable. This also happens if you move or rename the script outside of Unity without also moving or renaming the script's .meta file accordingly. This method allows you to check whether an asset contains any such unloadable ScriptableObject instances due to missing scripts. You can remove unloadable ScriptableObject instances from your assets by using AssetDatabase.RemoveScriptableObjectsWithMissingScript.

Note: This function can only be used with native asset files. If you pass a non-native asset file, it will throw an exception.

Additional resources: AssetDatabase.RemoveScriptableObjectsWithMissingScript, GameObjectUtility.GetMonoBehavioursWithMissingScriptCount.
