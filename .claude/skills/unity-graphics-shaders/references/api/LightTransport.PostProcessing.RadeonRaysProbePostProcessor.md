<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.RadeonRaysProbePostProcessor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RadeonRaysProbePostProcessor is a post processor for light probes. It provides common operations for light probes encoded as SphericalHarmonicsL2. Operations include radiance to irradiance conversion, conversion to the format expected by Unity for rendering (refer to IProbePostProcessor.ConvertToUnityFormat), addition, and scaling.

The RadeonRaysProbePostProcessor implements the IProbePostProcessor interface. It is using the OpenCL 1.2 API for compute.

### Constructors

| Constructor | Description |
| --- | --- |
| RadeonRaysProbePostProcessor | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| AddSphericalHarmonicsL2 | Perform the sum of two arrays of SphericalHarmonicsL2 element-wise. |
| ConvertToUnityFormat | Converts light probes encoded as SphericalHarmonicsL2 to the format expected by the Unity renderer. |
| ConvolveRadianceToIrradiance | Convolve radiance to irradiance. |
| DeringSphericalHarmonicsL2 | De-ring an array of SphericalHarmonicsL2 probes. |
| Dispose | Disposes the post processor. |
| Initialize | Initialize the RadeonRaysProbePostProcessor. |
| ScaleSphericalHarmonicsL2 | Scale an array of SphericalHarmonicsL2 probes element-wise. |
| WindowSphericalHarmonicsL2 | Apply a windowing operation on an array of SphericalHarmonicsL2 probes. |
