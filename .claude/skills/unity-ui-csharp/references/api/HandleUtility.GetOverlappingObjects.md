<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.GetOverlappingObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The mouse position to test. |
| outObjectList | The list to hold the returned objects. |

### Description

Gets an ordered list of objects that would be picked under the give mouse position.

The `position` argument specifies the test location in GUI coordinates.

This function returns an unprocessed list of objects that could be either GameObjects or Components. This list also doesn't take the SelectionBase attribute or prefab roots into account.

This function must be called during a Scene GUI event that is not Repaint. It only works with the current SceneView.

Additional resources: PickGameObject, SceneView.duringSceneGui.
