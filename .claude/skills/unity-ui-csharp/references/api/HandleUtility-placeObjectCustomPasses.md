<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility-placeObjectCustomPasses.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Subscribe to this event to handle object placement in the SceneView.

This delegate is invoked by PlaceObject when drag and dropping objects from the Hierarchy and Project views.

```csharp
using UnityEditor;
using UnityEngine;static class PlaceObjectExample
{
    static readonly Plane s_GroundPlane = new Plane(Vector3.up, Vector3.zero);    [InitializeOnLoadMethod]
    static void InitPlaceObjectHandler()
    {
        HandleUtility.placeObjectCustomPasses += PlaneRaycast;
    }    // In this example, we register a plane at the scene origin to test for object placement.
    static bool PlaneRaycast(Vector2 mousePosition, out Vector3 position, out Vector3 normal)
    {
        Ray worldRay = HandleUtility.GUIPointToWorldRay(mousePosition);
        float distance;        if (s_GroundPlane.Raycast(worldRay, out distance))
        {
            position = worldRay.GetPoint(distance);
            normal = s_GroundPlane.normal;
            return true;
        }        position = Vector3.zero;
        normal = Vector3.up;
        return false;
    }
}
```
