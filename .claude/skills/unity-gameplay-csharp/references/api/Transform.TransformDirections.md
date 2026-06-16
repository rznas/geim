<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.TransformDirections.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| directions | The directions to be transformed, each is replaced by the transformed version. |

### Description

Transforms multiple directions from local space to world space overwriting each original direction with the transformed version.

This operation is not affected by scale or position of the transform. The transformed vectors have the same length as the original versions.

If you need the inverse operation to transform from world space to local space you can use Transform.InverseTransformDirections

You should use Transform.TransformPoints for the conversion if the vectors represent positions rather than directions.

Additional resources: Transform.TransformDirection, Transform.InverseTransformDirections, Transform.TransformPoints, Transform.TransformVectors.

### Parameters

| Parameter | Description |
| --- | --- |
| directions | The directions to be transformed, these vectors are not modified by the function unless the `transformedDirections` span overlaps. |
| transformedDirections | Receives the transformed directions, must be the same length as `directions` otherwise an exception will be thrown. If this span overlaps `directions` other than representing the exact same elements the behaviour is undefined. |

### Description

Transforms multiple directions from local space to world space writing the transformed directions to a possibly different location.

This operation is not affected by scale or position of the transform. The transformed vectors have the same length as the original versions.

If you need the inverse operation to transform from world space to local space you can use Transform.InverseTransformDirections

You should use Transform.TransformPoints for the conversion if the vectors represent positions rather than directions.

Additional resources: Transform.TransformDirection, Transform.InverseTransformDirections, Transform.TransformPoints, Transform.TransformVectors.
