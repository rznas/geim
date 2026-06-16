<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.CorrelatedColorTemperatureToRGB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kelvin | Temperature in Kelvin. Range 1000 to 40000 Kelvin. |

### Returns

**Color** Correlated Color Temperature as floating point RGB color.

### Description

Convert a color temperature in Kelvin to RGB color.

Given a correlated color temperature (in Kelvin), estimate the RGB equivalent. Curve fit error is max 0.008.

Correlated color temperature is defined as the color temperature of the electromagnetic radiation emitted from an ideal black body with its surface temperature given in degrees Kelvin.

Temperature must fall between 1000 and 40000 degrees.
