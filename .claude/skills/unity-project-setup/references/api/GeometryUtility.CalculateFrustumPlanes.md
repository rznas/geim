<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GeometryUtility.CalculateFrustumPlanes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera with the view frustum that you want to calculate planes from. |

### Returns

**Plane[]** The planes that form the camera's view frustum.

### Description

Calculates frustum planes.

This function takes the given camera's view frustum and returns six planes that form it. The normal of each plane points into the frustum.

Ordering: [0] = Left, [1] = Right, [2] = Bottom, [3] = Top, [4] = Near, [5] = Far

Additional resources: Plane, GeometryUtility.TestPlanesAABB.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Calculate the planes from the main camera's view frustum
        Plane[] planes = GeometryUtility.CalculateFrustumPlanes(Camera.main);        // Create a "Plane" GameObject aligned to each of the calculated planes
        for (int i = 0; i < 6; ++i)
        {
            GameObject p = GameObject.CreatePrimitive(PrimitiveType.Plane);
            p.name = "Plane " + i.ToString();
            p.transform.position = -planes[i].normal * planes[i].distance;
            p.transform.rotation = Quaternion.FromToRotation(Vector3.up, planes[i].normal);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera with the view frustum that you want to calculate planes from. |
| planes | An array of 6 Planes that will be overwritten with the calculated plane values. |

### Description

Calculates frustum planes.

This function takes the given camera's view frustum and returns six planes that form it. This is similar to the previous overload, except that instead of allocating a new array for the calculated planes, the function will use an array that you have provided. This array must always be exactly of length 6.

Ordering: [0] = Left, [1] = Right, [2] = Down, [3] = Up, [4] = Near, [5] = Far

Additional resources: Plane, GeometryUtility.TestPlanesAABB.

### Parameters

| Parameter | Description |
| --- | --- |
| worldToProjectionMatrix | A matrix that transforms from world space to projection space, from which the planes will be calculated. |

### Returns

**Plane[]** The planes that enclose the projection space described by the matrix.

### Description

Calculates frustum planes.

This function returns six planes of a frustum defined by the given view & projection matrix.

Additional resources: Plane, GeometryUtility.TestPlanesAABB.

### Parameters

| Parameter | Description |
| --- | --- |
| worldToProjectionMatrix | A matrix that transforms from world space to projection space, from which the planes will be calculated. |
| planes | An array of 6 Planes that will be overwritten with the calculated plane values. |

### Description

Calculates frustum planes.

This function returns six planes of a frustum defined by the given view & projection matrix. This is similar to the previous overload, except that instead of allocating a new array for the calculated planes, the function will use an array that you have provided. This array must always be exactly of length 6.

Additional resources: Plane, GeometryUtility.TestPlanesAABB.
