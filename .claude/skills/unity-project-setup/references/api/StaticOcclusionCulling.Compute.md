<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticOcclusionCulling.Compute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to generate static occlusion culling data.

This function will run asynchronously until the data is generated but you can check the status of the computation using the isRunning property.

The memory limit (specified in bytes) is a hint to the PVS baking system about the likely memory requirements.

Additional resources: GenerateInBackground, isRunning.
