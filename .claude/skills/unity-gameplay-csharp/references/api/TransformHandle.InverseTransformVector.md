<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.InverseTransformVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vector | The vector to transform, in world space. |

### Returns

**Vector3** The transformed vector, in local space.

### Description

Transforms a `vector` from world space to local space. The opposite of TransformHandle.TransformVector.

This operation is not affected by position of the transform but it is affected by scale. The returned vector may have a different length than `vector`.

If you need to transform many vectors at once consider using TransformHandle.InverseTransformVectors instead as it is much faster than repeatedly calling this function.

Additional resources:TransformHandle.TransformVector, TransformHandle.InverseTransformVectors, TransformHandle.InverseTransformPoint, TransformHandle.InverseTransformDirection.

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x component of the vector to transform, in world space. |
| y | The y component of the vector to transform, in world space. |
| z | The z component of the vector to transform, in world space. |

### Returns

**Vector3** The transformed vector, in local space.

### Description

Transforms the vector `x`, `y`, `z` from world space to local space. The opposite of TransformHandle.TransformVector.

This operation is not affected by position of the transform but it is affected by scale. The returned vector may have a different length than `vector`.

If you need to transform many vectors at once consider using TransformHandle.InverseTransformVectors instead as it is much faster than repeatedly calling this function.

Additional resources:TransformHandle.TransformVector, TransformHandle.InverseTransformVectors, TransformHandle.InverseTransformPoint, TransformHandle.InverseTransformDirection.
