<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetNearestPrefabInstanceRoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| componentOrGameObject | The object to check. Must be a component or GameObject. |

### Returns

**GameObject** The nearest Prefab instance root.

### Description

Retrieves the GameObject that is the root of the nearest Prefab instance the object is part of.

The method searches the Transform hierarchy until it finds the root of any Prefab instance, regardless of whether that instance is an applied nested Prefab inside another Prefab, or not.

The method returns null if the given object is not part of a Prefab instance. This includes GameObjects or components that have been added and not applied to a Prefab instance.


 *Overview of which objects are Prefab instance roots.*

In the editor, Prefab instance roots have Open and Select buttons, and in the case of an outermost Prefab instance root, an Overrides dropdown.

Additional resources: GetOutermostPrefabInstanceRoot.
