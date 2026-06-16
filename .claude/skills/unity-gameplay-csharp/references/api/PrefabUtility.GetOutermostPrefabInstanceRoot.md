<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetOutermostPrefabInstanceRoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a component or GameObject. |

### Returns

**GameObject** The outermost Prefab instance root.

### Description

Retrieves the GameObject that is the root of the outermost Prefab instance the object is part of.

The method will search up the parents in the Transform hierarchy until it finds the root of a Prefab instance which is not an applied nested Prefab inside another Prefab.

If the method finds a Prefab instance root which is an added GameObject to another Prefab instance, it will return that root, since it it not an applied nested Prefab root.

The method will return null if the given object is not part of a Prefab instance. This includes GameObjects or components that have been added and not applied to a Prefab instance.


 *Overview of which objects are Prefab instance roots.*

In the editor, outermost Prefab instance roots have the Overrides dropdown, whereas other Prefab instance roots don’t.

Additional resources: GetNearestPrefabInstanceRoot.
