<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.TransformVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vector | The vector to transform, in local space. |

### Returns

**Vector3** The transformed vector, in world space.

### Description

Transforms `vector` from local space to world space.

This operation is not affected by position of the transform, but it is affected by scale. The returned vector may have a different length than `vector`.

If you need the inverse operation to transform from world space to local space you can use TransformHandle.InverseTransformVector

If you need to transform many vectors at once consider using TransformHandle.TransformVectors instead as it is much faster than repeatedly calling this function.

Additional resources:TransformHandle.TransformVectors, TransformHandle.InverseTransformVector, TransformHandle.TransformPoint, TransformHandle.TransformDirection.

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x component of the vector to transform, in local space. |
| y | The y component of the vector to transform, in local space. |
| z | The z component of the vector to transform, in local space. |

### Returns

**Vector3** The transformed vector, in world space.

### Description

Transforms vector `x`, `y`, `z` from local space to world space.

This operation is not affected by position of the transform, but is is affected by scale. The returned vector may have a different length than `vector`.

If you need the inverse operation to transform from world space to local space you can use TransformHandle.InverseTransformVector

If you need to transform many vectors at once consider using TransformHandle.TransformVectors instead as it is much faster than repeatedly calling this function.

Additional resources:TransformHandle.TransformVectors, TransformHandle.InverseTransformVector, TransformHandle.TransformPoint, TransformHandle.TransformDirection.
