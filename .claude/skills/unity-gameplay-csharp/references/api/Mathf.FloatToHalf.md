<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.FloatToHalf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| val | The floating point value to convert. |

### Returns

**ushort** The converted half-precision float, stored in a 16-bit unsigned integer.

### Description

Encode a floating point value into a 16-bit representation.

Converting a floating point value to a half causes it to lose precision and also reduces the maximum range of values it can represent. The new range is from -65,504 and 65,504. For more information on 16-bit floating-point numbers, and for information on how precision changes over the range of values, see [Half-precision floating-point format](https://en.wikipedia.org/wiki/Half-precision_floating-point_format).

If the converted floating point value falls exactly between two half-precision values, this method rounds it to the value furthest from zero (Round away from zero tie-break rule). This selects the value closer to positive or negative infinity, depending on the sign.

You should only use the returned ushort as a storage format. If you want to perform mathematical operations on it, first convert it back to a float with Mathf.HalfToFloat.
