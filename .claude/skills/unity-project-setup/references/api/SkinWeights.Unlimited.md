<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinWeights.Unlimited.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An unlimited number of bones affect each vertex.

The count is only limited by the number of bones per vertex in the Mesh, which can be adjusted in its Import Setttings.

When used to access Mesh.GetBoneWeightBuffer the Bone Weight buffer will contain the following data: * Element 0 to (mesh vertex count + 1) contain indices. These indices describe the start and end positions for the data in the rest of the buffer, ordered by mesh vertex. For example, element 0 is the start position of the data for mesh vertex 0; element 1 is the end position of the data for mesh vertex 0 and the start position of the data for mesh vertex 1, and so on. * Element at (mesh vertex count + 1) describes the end position for the data for the final mesh vertex. * After that, the BoneWeight1 that relate to each mesh vertex are stored contiguously. For example, all the BoneWeight1 that relate to mesh vertex 0 are contiguous, followed by all the blend shape vertices that relate to mesh vertex 1, and so on.

Additional resources: QualitySettings.skinWeights.
