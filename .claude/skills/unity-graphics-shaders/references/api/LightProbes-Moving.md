<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/LightProbes-Moving.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Move Light Probes at runtime

You might need to move **Light Probes** at runtime. For example, if you create a world by loading multiple scenes additively and then move each **scene** to a different position, you need to move the Light Probes with their related scene objects.

You can use the LightProbes API to move Light Probes at runtime. You can’t move Light Probes by updating the **Transform component** of the **Light Probe Group** object, because the Transform only affects baking.

When you move Light Probes using the API, only the positions change. The baked data stored in the Light Probes stays the same.

Follow these steps:

1. Clone the Light Probes data that a loaded scene uses, using the LightProbes.GetInstantiatedLightProbesForScene API. The loaded scene (the `Scene` object) will use this cloned data from now on.
2. Set new positions using the GetPositionsSelf and SetPositionsSelf APIs.
3. Update the internal structure of the Light Probe data in the scene using the LightProbes.Tetrahedralize or LightProbes.TetrahedralizeAsync API, so objects use the correct light data.

If you baked the scene together with other scenes that contain Light Probes, the returned data contains Light Probes from all the baked scenes. Refer to Light Probes and Scene loading for more information about using Light Probes in multiple scenes.

The `Tetrahedralize` APIs can take a long time. If you move multiple Light Probes, it’s best to tetrahedralize once at the end.

You can use the LightProbes.GetSharedLightProbesForScene API instead if you need to read the positions of the Light Probes in a scene, but not move them.

## Example

The following code moves the Light Probes in the current scene to a new position each frame.

Attach the script to any object in a scene. When you run the project, select any object that uses Light Probes so you can see the probes move. The Light Probe Group object doesn’t move.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadSingleSceneAndMoveProbes : MonoBehaviour
{
    void Update()
    {
        // Get a copy of the Light Probes in the current scene
        LightProbes lightProbes = LightProbes.GetInstantiatedLightProbesForScene(SceneManager.GetActiveScene());

        // Get the Light Probe positions
        Vector3[] positions = lightProbes.GetPositionsSelf();

        // Update the positions
        for (int i = 0; i < positions.Length; i++)
        {
            positions[i].x = positions[i].x + 0.01f;
        }

        // Copy the new positions back to the Light Probes
        lightProbes.SetPositionsSelf(positions, true);

        // Tetrahedralize to update the data in the LightProbes object of the scene.
        LightProbes.Tetrahedralize();
    }
}
```
