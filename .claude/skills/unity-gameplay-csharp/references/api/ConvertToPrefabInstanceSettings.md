<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ConvertToPrefabInstanceSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Settings controlling the behavior of PrefabUtility.ConvertToPrefabInstance.

### Properties

| Property | Description |
| --- | --- |
| changeRootNameToAssetName | Change the name of the root GameObject to match the name of the Prefab Asset used when converting. |
| componentsNotMatchedBecomesOverride | If a Component is not matched up then it can become an added Component on the new Prefab instance. This property is only used when used together with ObjectMatchMode.ByHierarchy. |
| gameObjectsNotMatchedBecomesOverride | If a GameObject is not matched up then it can become an added GameObject on the new Prefab instance. This property is only used when used together with ObjectMatchMode.ByHierarchy. |
| logInfo | Enables logging to the console with information about which objects were matched when converting a plain GameObject to a Prefab instance. |
| objectMatchMode | Use this property to control how GameObjects and Components are matched up or not when converting a plain GameObject to a Prefab instance. |
| recordPropertyOverridesOfMatches | When a Component or GameObject is matched with objects in the Prefab Asset then existing values can be recorded as overrides on the new Prefab instance if this property is set to true. |
