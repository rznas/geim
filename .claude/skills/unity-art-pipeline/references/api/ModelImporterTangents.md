<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterTangents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Vertex tangent generation options for ModelImporter.

Tangentss can either be imported from model file, calculated by Unity using several methods (default is MikkTSpace), or not included into imported mesh at all. Vertex tangents are most often used for normal/bump mapping.

Additional resources: ModelImporter.importTangents, ModelImporterNormals, Mesh.tangents.

### Properties

| Property | Description |
| --- | --- |
| Import | Import vertex tangents from model file. |
| CalculateLegacy | Calculate tangents with legacy algorithm. |
| CalculateLegacyWithSplitTangents | Calculate tangents with legacy algorithm, with splits across UV charts. |
| CalculateMikk | Calculate tangents using MikkTSpace (default). |
| None | Do not import vertex tangents. |
