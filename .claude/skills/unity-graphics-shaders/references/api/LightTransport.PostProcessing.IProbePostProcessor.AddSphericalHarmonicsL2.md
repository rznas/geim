<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.IProbePostProcessor.AddSphericalHarmonicsL2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context. |
| A | Source buffer A. |
| B | Source buffer B. |
| sum | Destination buffer where the sum of A and B is written. |
| probeCount | Number of SphericalHarmonicsL2 probes to add. |

### Returns

**bool** True if the operation is successfully added to the command queue in the context.

### Description

Perform the sum of two arrays of SphericalHarmonicsL2 element-wise.

Sum = A + B. Each element from source buffer A is added to the corresponding element from source buffer B. The result is written into the destination buffer 'sum'.
