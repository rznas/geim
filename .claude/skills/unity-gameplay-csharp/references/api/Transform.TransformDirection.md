<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.TransformDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms `direction` from local space to world space.

This operation is not affected by scale or position of the transform. The returned vector has the same length as `direction`.

If you need the inverse operation to transform from world space to local space you can use Transform.InverseTransformDirection

You should use Transform.TransformPoint for the conversion if the vector represents a position rather than a direction.

If you need to transform many directions at once consider using Transform.TransformDirections instead as it is much faster than repeatedly calling this function.

Additional resources: Transform.TransformDirections, Transform.InverseTransformDirection, Transform.TransformPoint, Transform.TransformVector.

### Description

Transforms direction `x`, `y`, `z` from local space to world space.

This operation is not affected by scale or position of the transform. The returned vector has the same length as `direction`.

If you need the inverse operation to transform from world space to local space you can use Transform.InverseTransformDirection

You should use Transform.TransformPoint for the conversion if the vector represents a position rather than a direction.

If you need to transform many directions at once consider using Transform.TransformDirections instead as it is much faster than repeatedly calling this function.

Additional resources: Transform.TransformDirections, Transform.InverseTransformDirection, Transform.TransformPoint, Transform.TransformVector.
