<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.ConvertToPrefabInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| plainGameObject | The GameObject that will be converted to a Prefab instance. |
| prefabAssetRoot | The Prefab Asset used to create the Prefab instance from. |
| settings | Settings to control the conversion. |
| mode | Using UserAction will record undo and show dialogs if needed. |

### Description

Convert the plain GameObject to a Prefab instance using the provided Prefab Asset root object.

This function will keep the root GameObject position, rotation and scale in the Scene but merge the contents from the new Prefab Asset. When using ObjectMatchMode.ByName object matching is performed. When a match is found references to this object will survive the conversion. Note that matching cannot be performed for GameObjects with duplicate names in each of the input GameObject hierarchies.

Additional resources: ConvertToPrefabInstances, ReplacePrefabAssetOfPrefabInstance.
