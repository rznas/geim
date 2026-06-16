<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransferFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains electro-optical transfer function (EOTF) options, which describe how the final rendered video signal is converted to physical light intensity on display devices.

Selecting the appropriate transfer function ensures that the color representation is accurate and consistent across different display systems.
 Unity selects the appropriate transfer function based on the selected ColorGamut.

### Properties

| Property | Description |
| --- | --- |
| sRGB | sRGB transfer function, commonly used for Standard Dynamic Range (SDR) displays. |
| BT1886 | ITU-R BT.1886 transfer function, standard for HDTV. |
| PQ | Perceptual Quantizer (PQ), also known as SMPTE ST 2084 transfer function, used for High Dynamic Range (HDR) displays. |
| Linear | Linear transfer function, where output luminance is directly proportional to input. |
| Gamma22 | Gamma 2.2 transfer function, common in CRT displays. |
