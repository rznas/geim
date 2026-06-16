<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RemoveScriptableObjectsWithMissingScript.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The path to the asset file to check. |

### Returns

**int** The number of ScriptableObject-derived objects in the file which were removed.

### Description

Removes any ScriptableObject instances from the given asset file which cannot be loaded because their scripts could not be found.

If you delete the script which defines a type of ScriptableObject, all instances of that ScriptableObject in your assets become unloadable. This also happens if you move or rename the script outside of Unity without also moving or renaming the script's .meta file accordingly. This method allows you to remove any such unloadable ScriptableObject instances from an asset. You can check whether there are unloadable ScriptableObject instances in your assets without removing them, by using AssetDatabase.GetScriptableObjectsWithMissingScriptCount.

Note: This function can only be used with native asset files. If you pass a non-native asset file, it will throw an exception.

You must call AssetDatabase.SaveAssets to save the changes to your asset, after using this method.

Additional resources: AssetDatabase.GetScriptableObjectsWithMissingScriptCount, GameObjectUtility.RemoveMonoBehavioursWithMissingScript.
