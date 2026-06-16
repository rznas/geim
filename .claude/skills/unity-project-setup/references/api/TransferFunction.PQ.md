<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransferFunction.PQ.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Perceptual Quantizer (PQ), also known as SMPTE ST 2084 transfer function, used for High Dynamic Range (HDR) displays.

The Perceptual Quantizer (PQ) transfer function is a newer version of a traditional gamma curve used in Standard Dynamic Range (SDR) displays.
 Unlike the gamma curve, which is a simple power-law function, the PQ curve is designed to better align with the non-linear way the human eye perceives luminance.
 The function is designed for High Dynamic Range (HDR) displays, enabling a more accurate and perceptually uniform representation of brightness across a wide range of luminance levels, up to 10,000 nits.

 For more information, refer to [SMPTE reference document for ST 2084](https://pub.smpte.org/latest/st2084/st2084-2014.pdf) and [Dolby's Reference Level Guidelines For PQ (BT.2100)](https://professional.dolby.com/siteassets/pdfs/operational-guidelines-for-pq.pdf).

Unity uses this EOTF when the ColorGamut of the display is ColorGamut.HDR10 or ColorGamut.DolbyHDR.
