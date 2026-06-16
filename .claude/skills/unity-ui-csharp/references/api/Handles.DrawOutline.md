<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawOutline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objects | The GameObjects to outline. |
| parentNodeColor | The color of the outline of the GameObjects provided explicitly in the `objects` parameter and the `parentRenderers` parameters. The alpha value controls the intensity of the outline. |
| childNodeColor | The color of the outline of the GameObjects which are children to the GameObjects in the `objects` parameter. The alpha value controls the intensity of the outline. |
| color | The color of the outline for the `objects` and `renderers`. |
| parentRenderers | The instance IDs of the first set of Renderers. If you provide GameObjects or Renderers as parameters, these Renderers belong to the GameObjects provided explicitly in the parameters. |
| childRenderers | The instance IDs of the second set of Renderers. If you provide GameObjects or Renderers as parameters, these Renderers belong to the child GameObjects of the objects provided in the parameters. |
| fillOpacity | The opacity of the Renderers within each outline. |
| renderers | The Renderers to outline. |

### Description

Draws an outline around the specified GameObjects in the Scene View.

This only applies to GameObjects that have Renderer components. You can only use this during a EventType.Repaint event.

Instead of passing in GameObjects or Renderers, you can also use Renderer instance IDs. This improves performance because Unity doesn't need to get the instance IDs from the GameObjects or Renderers every time you call this function.

NOTE: Overloads that take GameObject[], Renderer[] or List<GameObject> as arguments are there for convenience, using them might result in additional allocations that cause additional garbage collection. To avoid performance or memory issues, use these overloads only when drawing a relatively small number of outlines (consider providing renderer instance IDs directly if the number of outlines exceeds 100).

The alpha values of `parentNodeColor` and `childNodeColor` control the intensity of the outline, 0 makes it completely transparent and 1 makes it fully opaque.

The `fillOpacity` controls the weight of the color multiplier for the Renderer. Higher `fillOpacity` values make the color more intense and leave the original object less visible.

Additional resources: Handles.DrawCamera.

```csharp
using UnityEditor;
using UnityEngine;namespace UnityEditor
{
    [CustomEditor(typeof(GameObject))]
    public class CustomInspector : Editor
    {
        private GameObject[] objects;        public void OnEnable()
        {
            // Note: If you use FindGameObjectsWithTag in a Prefab Stage that you opened from a Scene,
            // it includes GameObjects from that Scene. Instead use:
            // var renderers = StageUtility.GetCurrentStage().FindComponentsOfType<Renderer>();
            // to explicitly specify where to get the GameObjects from.
            objects = GameObject.FindGameObjectsWithTag("Player");  // populate the objects array with game objects
        }        public void OnSceneGUI()
        {
            // draw the outline with an alpha of 0.5
            if (Event.current.type == EventType.Repaint)
                Handles.DrawOutline(objects, Color.yellow, Color.green, 0.1f);
        }
    }
}
```
