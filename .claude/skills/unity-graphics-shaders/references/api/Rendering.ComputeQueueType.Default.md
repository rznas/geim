<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ComputeQueueType.Default.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This queue type would be the choice for compute tasks supporting or as optimisations to graphics processing. CommandBuffers sent to this queue would be expected to complete within the scope of a single frame and likely be synchronised with the graphics queue via GPUFences. Dispatches on default queue types would execute at a lower priority than graphics queue tasks.
