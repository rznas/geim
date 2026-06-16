<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysProbeIntegrator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RadeonRays-based light probe integrator.

This integrator implementation uses the RadeonRaysContext class, which implements the IDeviceContext interface. It uses the RadeonRays SDK for ray-triangle intersection testing and the OpenCL 1.2 API for compute.

### Constructors

| Constructor | Description |
| --- | --- |
| RadeonRaysProbeIntegrator | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes the probe integrator. |
| IntegrateDirectRadiance | Integrate direct radiance. |
| IntegrateIndirectRadiance | Integrates indirect lighting contribution at probe positions using spherical sampling and path tracing. |
| IntegrateOcclusion | Integrate occlusion. |
| IntegrateValidity | Integrate validity. |
| Prepare | Prepare the integrator. |
| SetProgressReporter | Set progress tracker. |
