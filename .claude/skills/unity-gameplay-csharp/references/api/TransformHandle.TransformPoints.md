<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.TransformPoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The positions of the points to be transformed, each is replaced by the transformed version. |

### Description

Transforms multiple points from local space to world space overwriting each original point with the transformed version.

Note that the positions of the returned points are affected by scale. Use TransformHandle.TransformDirections if you are dealing with direction vectors.

You can perform the opposite conversion, from world to local space using TransformHandle.InverseTransformPoints.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject someObject;    const int kNumPoints = 100;    void Start()
    {
        // Instantiate 100 objects to the right of the current object
        Vector3[] points = new Vector3[kNumPoints];
        for (int pointNum = 0; pointNum < kNumPoints; pointNum++)
        {
            points[pointNum] = Vector3.right * pointNum;
        }
        transformHandle.TransformPoints(points);
        for (int pointNum = 0; pointNum < kNumPoints; pointNum++)
        {
            Instantiate(someObject, points[pointNum], someObject.transformHandle.rotation);
        }
    }
}
```

Additional resources:TransformHandle.TransformPoint, TransformHandle.InverseTransformPoints, TransformHandle.TransformDirections, TransformHandle.TransformVectors.

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The positions of the points to be transformed, these vectors are not modified by the function unless the `transformedPositions` span overlaps. |
| transformedPositions | Receives the transformed positions of each point, must be the same length as `positions` otherwise an exception will be thrown. If this span overlaps `positions` other than representing the exact same elements the behaviour is undefined. |

### Description

Transforms multiple points from local space to world space writing the transformed points to a possibly different location.

Note that the positions of the returned points are affected by scale. Use TransformHandle.TransformDirections if you are dealing with directions.

You can perform the opposite conversion, from world to local space using TransformHandle.InverseTransformPoints.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject someObject;    const int kNumPoints = 100;    void Start()
    {
        // Instantiate 100 objects to the right of the current object
        Vector3[] points = new Vector3[kNumPoints];
        for (int pointNum = 0; pointNum < kNumPoints; pointNum++)
        {
            points[pointNum] = Vector3.right * pointNum;
        }
        Vector3[] transformedPoints = new Vector3[kNumPoints];
        transformHandle.TransformPoints(points, transformedPoints);
        for (int pointNum = 0; pointNum < kNumPoints; pointNum++)
        {
            Instantiate(someObject, transformedPoints[pointNum], someObject.transform.rotation);
        }
    }
}
```

Additional resources:TransformHandle.TransformPoint, TransformHandle.InverseTransformPoints, TransformHandle.TransformDirections, TransformHandle.TransformVectors.
