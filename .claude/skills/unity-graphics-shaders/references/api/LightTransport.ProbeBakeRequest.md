<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.ProbeBakeRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ProbeBakeRequest contains all the data needed to bake a collection of probes. Can be added to a BakeInput.

### Properties

| Property | Description |
| --- | --- |
| bakeOutputFolderPath | The folder used to store the output when the probes in the request are baked. |
| dering | When true applies deringing to the probes in the request. |
| ignoreDirectEnvironment | When true ignores baking direct environment lighting into the probe. |
| ignoreIndirectEnvironment | When true ignores baking indirect environment lighting into the probe. |
| indirectScale | A scale to apply to the indirect probe lighting. |
| outputTypes | A bitmask that describes the outputs to bake for the probes in this request. Additional resources: ProbeBakeRequestOutput. |
| positionLength | The number of probe positions in this request. |
| positionOffset | The probe position offset of this request into the position array held by the BakeInput that contains this request. |
| postProcessOutputFolderPath | The folder used to store the output when the probes in the request are postprocessed. |
| pushoff | Pushoff value used when baking the probes in the request. |
