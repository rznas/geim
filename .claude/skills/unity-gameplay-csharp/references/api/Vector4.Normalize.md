<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4.Normalize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Makes this vector have a magnitude of 1.

When normalized, a vector keeps the same direction but its length is 1.0.

Note that this function will change the current vector. If you want to keep the current vector unchanged, use normalized variable.

If this vector is too small to be normalized it will be set to zero.

Additional resources: normalized property.

### Parameters

| Parameter | Description |
| --- | --- |
| a | The vector to be normalized. |

### Returns

**Vector4** A new vector with the same direction as the original vector but with a magnitude of 1.0.

### Description

Returns a normalized vector based on the given vector. The normalized vector has a magnitude of 1 and is in the same direction as the given vector. Returns a zero vector If the given vector is too small to be normalized.

Note that this does not modify the given vector. To modify and normalize the current vector, use the Normalize function without a parameter.

Additional resources: normalized function.
