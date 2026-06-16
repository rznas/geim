<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingFlags.ComputeMaterialsCRC.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Causes RayTracingAccelerationStructure.CullInstances to compute the CRC hash values of all unique Materials used by ray tracing instances that were added to the acceleration structure.

The array of Material CRC values is returned by RayTracingAccelerationStructure.CullInstances in RayTracingInstanceCullingResults.

The cost for enabling this flag depends on how complex the Materials are and how many different Materials are used in a Scene. The CRC array can be used for example to reset the convergence during path tracing if a Material property has changed between frames.

Additional resources: Material.ComputeCRC, HashUtilities.
