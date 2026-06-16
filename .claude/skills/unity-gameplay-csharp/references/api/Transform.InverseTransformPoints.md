<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.InverseTransformPoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The positions of the points to be transformed, each is replaced by the transformed version. |

### Description

Transforms multiple positions from world space to local space overwriting each original position with the transformed version.

This function is essentially the opposite of Transform.TransformPoints which is used to convert from local to world space.

Note that the returned positions are affected by scale. Use Transform.InverseTransformDirections if you are dealing with direction vectors rather than positions.

Additional resources:Transform.TransformPoints, Transform.InverseTransformPoint, Transform.InverseTransformDirections, Transform.InverseTransformVectors.

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The positions of the points to be transformed, these vectors are not modified by the function unless the `transformedPositions` span overlaps. |
| transformedPositions | Receives the transformed positions of each point, must be the same length as the `positions` span otherwise an exception will be thrown. If this span overlaps the `positions` span other than representing the exact same elements the behaviour is undefined. |

### Description

Transforms multiple positions from world space to local space writing the transformed positions to a possibly different location.

This function is essentially the opposite of Transform.TransformPoints which is used to convert from local to world space.

Note that the returned positions are affected by scale. Use Transform.InverseTransformDirections if you are dealing with direction vectors rather than positions.

Additional resources:Transform.TransformPoints, Transform.InverseTransformPoint, Transform.InverseTransformDirections, Transform.InverseTransformVectors.
