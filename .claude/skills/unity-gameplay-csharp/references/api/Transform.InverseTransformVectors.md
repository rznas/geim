<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.InverseTransformVectors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vectors | The vectors to be transformed, each is replaced by the transformed version. |

### Description

Transforms multiple vectors from world space to local space overwriting each original position with the transformed version. The opposite of Transform.TransformVectors.

This operation is not affected by position of the transform but it is affected by scale. The transformed vectors may have different lengths than the originals.

Additional resources:Transform.TransformVectors, Transform.InverseTransformVector, Transform.InverseTransformPoint, Transform.InverseTransformDirection.

### Parameters

| Parameter | Description |
| --- | --- |
| vectors | The vectors to be transformed, these vectors are not modified by the function unless the `transformedVectors` span overlaps. |
| transformedVectors | Receives the transformed vectors, must be the same length as `vectors` otherwise an exception will be thrown. If this span overlaps `vectors` other than representing the exact same elements the behaviour is undefined. |

### Description

Transforms the vector `x`, `y`, `z` from world space to local space writing the transformed positions to a possibly different location. The opposite of Transform.TransformVector.

This operation is not affected by position of the transform but it is affected by scale.The transformed vectors may have different lengths than the originals.

Additional resources:Transform.TransformVectors, Transform.InverseTransformVector, Transform.InverseTransformPoint, Transform.InverseTransformDirection.
