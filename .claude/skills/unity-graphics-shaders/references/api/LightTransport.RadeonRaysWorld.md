<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RadeonRays integration world.

This is an abstration for the different world space structures used by the integrator. This could be acceleration structures, lookup tables and other data structures that can be shared between integrators.

### Constructors

| Constructor | Description |
| --- | --- |
| RadeonRaysWorld | Create a new RadeonRaysWorld. This class uses a version of RadeonRays SDK based on OpenCL 1.2. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes the RadeonRaysWorld. |
| GetIntegrationContext | Get the Integration context. |
| SetIntegrationContext | Set integration context. |
