<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.InverseTransformDirections.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| directions | The directions to be transformed, each is replaced by the transformed version. |

### Description

Transforms multiple directions from world space to local space overwriting each original position with the transformed version. The opposite of Transform.TransformDirections.

This operation is not affected by scale or position of the transform. The transformed vectors have the same lengths as the originals.

If you need the inverse operation to transform from local space to world space you can use Transform.TransformDirections

You should use Transform.InverseTransformPoints if the vectors represent positions in space rather than directions.

Additional resources:Transform.InverseTransformDirection, Transform.TransformDirections, Transform.InverseTransformPoints, Transform.InverseTransformVectors.

### Parameters

| Parameter | Description |
| --- | --- |
| directions | The directions to be transformed, these vectors are not modified by the function unless the `transformedDirections` span overlaps. |
| transformedDirections | Receives the transformed directions, must be the same length as the `directions` span otherwise an exception will be thrown. If this span overlaps `directions` other than representing the exact same elements the behaviour is undefined. |

### Description

Transforms multiple directions from world space to local space writing the transformed positions to a possibly different location. The opposite of Transform.TransformDirections.

This operation is not affected by scale or position of the transform. The transformed vectors have the same lengths as the originals.

If you need the inverse operation to transform from local space to world space you can use Transform.TransformDirections

You should use Transform.InverseTransformPoints if the vectors represent positions in space rather than directions.

Additional resources:Transform.InverseTransformDirection, Transform.TransformDirections, Transform.InverseTransformPoints, Transform.InverseTransformVectors.
