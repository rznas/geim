<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.ReferenceProbePostProcessor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ReferenceProbePostProcessor is a post processor for light probes. The ReferenceProbePostProcessor implements the IProbePostProcessor interface.

The implementation favors correctness and simplicity over performance. It runs on CPU without multithreading, asynchronous execution or any other optimizations. The class is meant for debugging and is not intended for production use.

### Constructors

| Constructor | Description |
| --- | --- |
| ReferenceProbePostProcessor | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| AddSphericalHarmonicsL2 | Perform the sum of two arrays of SphericalHarmonicsL2. |
| ConvertToUnityFormat | Converts light probes encoded as SphericalHarmonicsL2 to the format expected by the Unity renderer. |
| ConvolveRadianceToIrradiance | Convolve radiance to irradiance. |
| DeringSphericalHarmonicsL2 | De-ring an array of SphericalHarmonicsL2 probes. |
| Dispose | Disposes the post processor. |
| Initialize | Initialize the ReferenceProbePostProcessor. |
| ScaleSphericalHarmonicsL2 | Scale an array of SphericalHarmonicsL2 probes. |
| WindowSphericalHarmonicsL2 | Apply a windowing operation on an array of SphericalHarmonicsL2 probes. |
