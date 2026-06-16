<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.IsDisconnectedFromPrefabAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a GameObject or component. |

### Returns

**bool** True if the instance is disconnected.

### Description

Returns true if the given object is part of an instance where the PrefabInstance object is missing but the given object has a valid corresponding object.

The disconnected Prefab workflows have been removed from Unity because of ambiguity when it comes to nesting and variants. However, disconnected Prefab instances are still common when upgrading Prefabs from projects originating from versions of Unity prior to the introduction of improved Prefab workflows.

If you have disconnected Prefabs you should consider unpacking them completely or turnning them back into connected Prefab instances by reverting the instances.
