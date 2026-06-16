<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer.GetMeshWeightings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| weightings | An array this function populates with the list of Mesh weightings the ParticleSystemRenderer uses for particle Mesh selection. If the array is smaller than the number of weights, this function cannot populate it with every weight. If the array is larger than the number of weights, this function ignores indices greater than the number of weights. Use ParticleSystemRenderer.meshCount to get the number of Meshes, and thus weights, the ParticleSystemRenderer has. |

### Returns

**int** The number of weights this function wrote to the destination array.

### Description

Gets the array of Mesh weightings to use when randomly selecting particle meshes.

Additional resources: ParticleSystemRenderer.meshDistribution.
