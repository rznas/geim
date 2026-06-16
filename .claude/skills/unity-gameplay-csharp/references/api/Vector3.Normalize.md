<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.Normalize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Normalizes the magnitude of the current vector to 1 while maintaining the direction.

This method converts the current vector to a unit vector. The converted vector has a magnitude of 1 and is in the same direction. Only the magnitude of the vector changes.

 The vector components can be positive or negative. After normalization, the vector lies on the unit sphere, so its length is 1, and each component can be anywhere between −1 and 1 depending on direction.

 If the current vector is too small to be normalized, then this function returns the zero vector. A vector is too small to be normalized if it is considered equal to the zero vector.

 **Note**: This method changes the current vector. If you want to keep the current vector unchanged, use normalized variable or the static version of this method.

 Additional resources: normalized.

### Parameters

| Parameter | Description |
| --- | --- |
| value | The vector to be normalized. |

### Returns

**Vector3** A new vector with the same direction as the original vector but with a magnitude of 1.0.

### Description

Obtains the normalized version of an input vector.

Returns a normalized vector based on the given vector. The normalized vector has a magnitude of 1 and is in the same direction as the given vector.

 The vector components can be positive or negative. After normalization, the vector lies on the unit sphere, so its length is 1, and each component can be anywhere between −1 and 1 depending on direction.

 If the given vector is too small to be normalized, then this function returns the zero vector. A vector is too small to be normalized if it is considered equal to the zero vector.

 **Note**: This method doesn't modify the given vector. To modify and normalize the current vector, use the instance version of this method, with no parameter.

 Additional resources: normalized.
