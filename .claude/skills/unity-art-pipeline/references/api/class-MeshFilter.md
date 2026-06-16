<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-MeshFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Mesh Filter component reference

A **Mesh Filter** component holds a reference to a mesh. It works with a Mesh Renderer component on the same **GameObject**; the Mesh Renderer renders the mesh that the Mesh Filter references.

To render a deformable mesh, use a Skinned Mesh Renderer instead. A Skinned Mesh Renderer component does not need a Mesh Filter component.

## Mesh Filter Inspector reference

| **Property** | **Function** |
| --- | --- |
| **Mesh** | A reference to a mesh asset.  To change the mesh asset that the Mesh Filter component references, use the picker (circle icon) next to the mesh’s name.  **Note:** The settings for other components on this GameObject don’t change when you change the mesh that the Mesh Filter references. For example, a Mesh Renderer doesn’t update its settings, which might cause Unity to render the mesh with unexpected properties. If this happens, adjust the settings of the other components as needed.  Corresponds to the MeshFilter.mesh property. |

MeshFilter
