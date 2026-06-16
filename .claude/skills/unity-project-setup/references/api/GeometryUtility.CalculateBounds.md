<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GeometryUtility.CalculateBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | An array that stores the location of 3d positions. |
| transform | A matrix that changes the position, rotation and size of the bounds calculation. |

### Returns

**Bounds** Calculates the axis-aligned bounding box.

### Description

Calculates the bounding box from the given array of positions and the transformation matrix.

GeometryUtility.CalculateBounds generates a Bounds bounding box. The positions parameter stores a 3d point array. Each point is inside the generated axis-aligned bounding box. The transform parameter provides a transformation Matrix4x4 that uses a Vector3 position, Quaternion rotation, and Vector3 scale.

The example below shows how to use CalculateBounds. A LightProbeGroup passes positions into CalculateBounds. The example code creates a bounding box with eight Light Probes. By default, the Light Probes are one unit from each corner of a unit cube.

To run the example:

1. Create a Project and add an empty GameObject called `GameObject`.
2. Add a 3D cube as a child of `GameObject` and call it `Cube`.
3. Add a LightProbeGroup component to `Cube`.
4. Add the script below to `Cube`.
5. Run the `Project` and switch back to the `Scene` view.

In the `Scene` view, you can see the LightProbeGroup. When the game runs, the rotation changes in `Awake`. The eight yellow spheres that indicate the LightProbeGroup change position and the Cube appears rotated. `Scene` mode shows the `Cube` rotated in the x, y and z axes, and shows in the `Local tool handle`. Rotating the `Cube` changes the positions of the eight LightProbeGroup Light Probes. The `Scene` mode rotates and zooms to show the Light Probes. Also, the `Cube` rotates and the LightProbeGroup updates. If you rescale the `Cube`, the LightProbeGroup changes size.

```csharp
using UnityEngine;
using System.Collections;// GeometryUtility.CalculateBounds - examplepublic class Example : MonoBehaviour
{
    void Awake()
    {
        transform.position = new Vector3(0.0f, 0.0f, 0.0f);
        transform.Rotate(10.0f, 30.0f, -50.0f, Space.Self);        Debug.Log(transform.localToWorldMatrix);
    }    void OnDrawGizmosSelected()
    {
        LightProbeGroup lightProbeGroup = GetComponent<LightProbeGroup>();        Vector3 center = transform.position;
        Bounds bounds = GeometryUtility.CalculateBounds(lightProbeGroup.probePositions, transform.localToWorldMatrix);
        Gizmos.color = new Color(1, 1, 1, 0.25f);
        Gizmos.DrawCube(center, bounds.size);
        Gizmos.DrawWireCube(center, bounds.size);
    }
}
```
