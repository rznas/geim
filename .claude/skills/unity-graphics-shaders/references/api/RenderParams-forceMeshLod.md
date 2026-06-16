<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderParams-forceMeshLod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Force Unity to use a specific Mesh LOD if the mesh has Mesh LODs.

If the value is -1, Unity uses the following:

- LOD0 at all times, if you use Graphics.RenderMeshInstanced, Graphics.RenderMeshIndirect, or Graphics.RenderMeshPrimitives
- The default Mesh LOD selection method, if you use Graphics.RenderMesh.
