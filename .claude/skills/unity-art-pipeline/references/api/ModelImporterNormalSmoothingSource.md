<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterNormalSmoothingSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Source of smoothing information for calculation of normals in ModelImporter.

Describes how Unity calculates whether edges have hard or smooth normals (from smoothing groups or the angle between faces). By default, Unity uses smoothing groups if they are present. If not, it uses angles.

 Additional resources: ModelImporter.normalSmoothingSource, Mesh.normals.

### Properties

| Property | Description |
| --- | --- |
| PreferSmoothingGroups | Use smoothing groups if they are present in the Model file, otherwise use angle (default). |
| FromSmoothingGroups | Use smoothing groups to determine which edges are smooth and which are hard. |
| FromAngle | Use the angle between adjacent faces to determine if an edge is smooth or hard. |
| None | Do not create hard edges. |
