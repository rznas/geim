<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildDebugFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Bitmask used for operating with debug data from the NavMesh build process.

Used in two situations:

- within NavMeshBuildSettings.debug to specify which debug data to retain after the build process has completed, preserving the world position and orientation;
- as a parameter of NavMeshEditorHelpers.DrawBuildDebug to control which of the available debug data types to display for a specified NavMesh.

Additional resources: NavMeshBuildSettings.

### Properties

| Property | Description |
| --- | --- |
| None | No debug data from the NavMesh build process is taken into consideration. |
| InputGeometry | The triangles of all the geometry that is used as a base for computing the new NavMesh. |
| Voxels | The voxels produced by rasterizing the source geometry into walkable and unwalkable areas. |
| Regions | The segmentation of the traversable surfaces into smaller areas necessary for producing simple polygons. |
| RawContours | The contours that follow precisely the edges of each surface region. |
| SimplifiedContours | Contours bounding each of the surface regions, described through fewer vertices and straighter edges compared to RawContours. |
| PolygonMeshes | Meshes of convex polygons constructed within the unified contours of adjacent regions. |
| PolygonMeshesDetail | The triangulated meshes with height details that better approximate the source geometry. |
| All | All debug data from the NavMesh build process is taken into consideration. |
