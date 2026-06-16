<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransferFunction-sRGB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

sRGB transfer function, commonly used for Standard Dynamic Range (SDR) displays.

The sRGB transfer function is a piece-wise function that includes a linear segment near zero to handle low-intensity values smoothly, and a power-law segment for the remaining parts of the curve, to align with human visual perception.
 Both its inputs and outputs are normalized to [0, 1], similar to TransferFunction.BT1886 and TransferFunction.Gamma22 EOTFs.

Unity uses this EOTF when the ColorGamut of the display is ColorGamut.sRGB or ColorGamut.DisplayP3.
