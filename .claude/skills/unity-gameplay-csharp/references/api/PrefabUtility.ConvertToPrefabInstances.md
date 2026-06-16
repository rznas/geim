<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ConvertToPrefabInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| plainGameObjects | The array of GameObjects that will be converted to Prefab instances. |
| prefabAssetRoot | The Prefab Asset used to create the Prefab instances from. |
| settings | Settings to control the conversion. |
| mode | Using UserAction will record undo and show dialogs if needed. |

### Description

Convert an array of GameObjects to Prefab instances of the given Prefab Asset.

This function is similar to the ConvertToPrefabInstance method, except it will perform the operation on each of the GameObjects in the input.
