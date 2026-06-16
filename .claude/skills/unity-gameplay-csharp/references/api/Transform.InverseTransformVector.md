<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.InverseTransformVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vector | The vector to transform, in world space. |

### Returns

**Vector3** The transformed vector, in local space.

### Description

Transforms a `vector` from world space to local space. The opposite of Transform.TransformVector.

This operation is not affected by position of the transform but it is affected by scale. The returned vector may have a different length than `vector`.

If you need to transform many vectors at once consider using Transform.InverseTransformVectors instead as it is much faster than repeatedly calling this function.

Additional resources:Transform.TransformVector, Transform.InverseTransformVectors, Transform.InverseTransformPoint, Transform.InverseTransformDirection.

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x component of the vector to transform, in world space. |
| y | The y component of the vector to transform, in world space. |
| z | The z component of the vector to transform, in world space. |

### Returns

**Vector3** The transformed vector, in local space.

### Description

Transforms the vector `x`, `y`, `z` from world space to local space. The opposite of Transform.TransformVector.

This operation is not affected by position of the transform but it is affected by scale. The returned vector may have a different length than `vector`.

If you need to transform many vectors at once consider using Transform.InverseTransformVectors instead as it is much faster than repeatedly calling this function.

Additional resources:Transform.TransformVector, Transform.InverseTransformVectors, Transform.InverseTransformPoint, Transform.InverseTransformDirection.
