<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransferFunction.Gamma22.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gamma 2.2 transfer function, common in CRT displays.

The Gamma 2.2 transfer function applies a simple power-law relationship between the input signal and the output luminance.
 Both its inputs and outputs are normalized to [0, 1], similar to TransferFunction.BT1886 and TransferFunction.Gamma22 EOTFs.

Unity uses this EOTF when the ColorGamut of the display is ColorGamut.P3D65G22.
