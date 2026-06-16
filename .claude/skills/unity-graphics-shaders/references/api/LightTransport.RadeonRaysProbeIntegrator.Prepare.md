<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysProbeIntegrator.Prepare.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| world | The integration World that Unity uses to ray trace against, when integrating validity. |
| positions | BufferSlice containing the probe positions to integrate. |
| pushoff | The offset to add to the rays traced from each probe position. You can use this parameter to prevent self-intersections when 32 bit floating point precision is an issue, for instance when integrating a large open world. |
| bounceCount | Number of light bounces. |
| context | Device context. |

### Description

Prepare the integrator.

The preparation can take a significant time if the world is large or OpenCL kernels haven't been written to cache yet.
