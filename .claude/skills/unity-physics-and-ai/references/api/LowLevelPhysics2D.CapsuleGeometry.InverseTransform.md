<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.CapsuleGeometry.InverseTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The geometry to transform with. |

### Returns

**CapsuleGeometry** The inverse-transformed geometry.

### Description

Inverse-Transform the geometry.

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The transform to be used on the geometry. |
| scaleRadius | Whether to scale the radius of the shape. |

### Returns

**CapsuleGeometry** The inverse-transformed geometry.

### Description

Inverse-Transform the geometry. The maximum (minimum in the inverse) absolute value component from the scale will be used to scale the CapsuleGeometry.radius.
