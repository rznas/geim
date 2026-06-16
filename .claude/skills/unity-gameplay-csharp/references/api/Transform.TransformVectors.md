<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.TransformVectors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vectors | The vectors to be transformed, each is replaced by the transformed version. |

### Description

Transforms multiple vectors from local space to world space overwriting each original vector with the transformed version.

This operation is not affected by the position of the transform, but it is affected by scale. The transformed vectors may have a different length to the original versions.

If you need the inverse operation to transform from world space to local space you can use Transform.InverseTransformVectors

Additional resources:Transform.TransformVector, Transform.InverseTransformVectors, Transform.TransformPoint, Transform.TransformDirection.

### Parameters

| Parameter | Description |
| --- | --- |
| vectors | The vectors to be transformed, these vectors are not modified by the function unless the `transformedVectors` span overlaps. |
| transformedVectors | Receives the transformed vectors, must be the same length as `vectors` otherwise an exception will be thrown. If this span overlaps `vectors` other than representing the exact same elements the behaviour is undefined. |

### Description

Transforms multiple vectors from local space to world space writing the transformed versions to a possibly different location.

This operation is not affected by the position of the transform, but is is affected by scale.The transformed vectors may have a different length to the original versions.

If you need the inverse operation to transform from world space to local space you can use Transform.InverseTransformVectors

Additional resources:Transform.TransformVector, Transform.InverseTransformVectors, Transform.TransformPoint, Transform.TransformDirection.
