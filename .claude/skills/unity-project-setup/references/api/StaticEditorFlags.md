<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticEditorFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes which Unity systems consider the GameObject as static, and include the GameObject in their precomputations in the Unity Editor.

Setting StaticEditorFlags at runtime has no effect on these systems.

For more information, see the Unity Manual documentation on StaticEditorFlags.

 Additional resources: GameObjectUtility.SetStaticEditorFlags, GameObject.isStatic

### Properties

| Property | Description |
| --- | --- |
| ContributeGI | Include the target Mesh Renderer in global illumination calculations. |
| OccluderStatic | Mark the GameObject as a Static Occluder in the occlusion culling system. |
| OccludeeStatic | Mark the GameObject as a Static Occludee in the occlusion culling system. |
| BatchingStatic | Combine the GameObject's Mesh with other eligible Meshes, to potentially reduce runtime rendering costs. |
| ReflectionProbeStatic | Include this GameObject when when precomputing data for Reflection Probes whose Type property is set to Baked. |
