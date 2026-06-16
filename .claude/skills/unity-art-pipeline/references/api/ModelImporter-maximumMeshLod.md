<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-maximumMeshLod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum LOD level index after which the mesh generation stops.

The import process stops after the LOD level index reaches the value of this property. For example, if you set this property to 5, the generated LOD levels will only go up to LOD5. The generation process might stop before the LOD level reaches the value in this property if the stop condition is met.

A negative value means that there is no limit on the number of LOD levels.
