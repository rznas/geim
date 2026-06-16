<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-isReadable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Are mesh vertices and indices accessible from script?

Making a mesh readable will keep two copies of it in memory, one for rendering and one in system memory for script access. Setting isReadable to false therefore saves memory. Scaling a mesh with different amounts along the three axes (i.e. non-uniform scaling) requires the mesh to be readable for correct lighting.

In the Unity editor access is always permitted when not in play mode.
