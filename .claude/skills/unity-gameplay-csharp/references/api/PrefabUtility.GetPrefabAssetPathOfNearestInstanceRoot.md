<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetPrefabAssetPathOfNearestInstanceRoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceComponentOrGameObject | An object in the Prefab instance to get the asset path of. |

### Returns

**string** The asset path.

### Description

Retrieves the asset path of the nearest Prefab instance root the specified object is part of.

The method will look in the Transform hierarchy for the GameObject or its nearest ancestor which is the root GameObject of any Prefab instance and return the asset path of that Prefab Asset.

For a Prefab Variant, the variant is returned, and not its base.

The method returns null if the object is not part of a Prefab instance.
