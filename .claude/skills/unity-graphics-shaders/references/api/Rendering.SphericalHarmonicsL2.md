<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SphericalHarmonicsL2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Spherical harmonics up to the second order (3 bands, 9 coefficients).

Spherical harmonics (SH) represent a function or signal over directions, and are commonly used in computer graphics to efficiently evaluate smooth lighting. Unity uses them for LightProbes and environment lighting.

L2 spherical harmonics is composed of 9 coefficients for each color channel.

Additional resources: RenderSettings.ambientMode, RenderSettings.ambientProbe, LightProbes.

### Properties

| Property | Description |
| --- | --- |
| this[int,int] | Access individual SH coefficients. |

### Public Methods

| Method | Description |
| --- | --- |
| AddAmbientLight | Add an ambient light to the spherical harmonics. |
| AddDirectionalLight | Add a directional light to the spherical harmonics. |
| Clear | Clears the spherical harmonics coefficients to zero. |
| Evaluate | Evaluates the spherical harmonics for each given direction. The directions and results arrays must have the same size. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if the spherical harmonics are different. |
| operator * | Scales SH by a given factor. |
| operator + | Adds two spherical harmonics. |
| operator == | Returns true if the spherical harmonics are equal. |
