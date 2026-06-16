<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unwrapping.GenerateSecondaryUVSet.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The Mesh to update. |
| settings | Settings that configure the calculation. |

### Returns

**bool** Returns true if the calculation succeeded. Otherwise, returns false.

### Description

Compute a unique UV layout for a Mesh, and store it in Mesh.uv2.

When you import a model asset, you can instruct Unity to compute a lightmap UV layout for it using [[ModelImporter-generateSecondaryUV]] or the Model Import Settings Inspector. This function allows you to do the same to procedurally generated meshes.

If this process requires multiple UV charts to flatten the the mesh, the mesh might contain more vertices than before. If the mesh uses 16-bit indices (see Mesh.indexFormat) and the process would result in more vertices than are possible to use with 16-bit indices, this function fails and returns `false`.

Additional resources: Mesh class, ModelImporter class, Generating Lightmap UVs.
