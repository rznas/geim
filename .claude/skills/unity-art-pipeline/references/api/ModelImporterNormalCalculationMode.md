<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterNormalCalculationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Normal generation options for ModelImporter.

Normals can be calculated by Unity using several methods. They can be either unweighted or weighted by area, angle or both.

Additional resources: ModelImporter.normalImportMode.

### Properties

| Property | Description |
| --- | --- |
| Unweighted_Legacy | The normals are unweighted. This option uses the legacy algorithm for handling hard edges. |
| Unweighted | The normals are not weighted. |
| AreaWeighted | The normals are weighted by the face area. |
| AngleWeighted | The normals are weighted by the vertex angle on each face. |
| AreaAndAngleWeighted | The normals are weighted by both the face area and the vertex angle on each face. |
