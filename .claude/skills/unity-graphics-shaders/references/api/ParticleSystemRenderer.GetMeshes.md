<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer.GetMeshes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| meshes | An array this function populates with the list of Meshes the ParticleSystemRenderer uses for particle Mesh selection. If the array is smaller than the number of Meshes, this function cannot populate it with every Mesh. If the array is larger than the number of Meshes, this function ignores indices greater than the number of Meshes. Use ParticleSystemRenderer.meshCount to get the number of Meshes the ParticleSystemRenderer has. |

### Returns

**int** The number of Meshes this function wrote to the destination array.

### Description

Gets the array of Meshes to use when selecting particle meshes.

Additional resources: ParticleSystemRenderer.renderMode.
