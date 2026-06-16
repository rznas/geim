<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to render an interactive preview of a mesh.

Use this class from an ObjectPreview or Editor.OnPreviewGUI to render an interactive mesh preview.

### Properties

| Property | Description |
| --- | --- |
| mesh | The Mesh to display in the preview space. |

### Constructors

| Constructor | Description |
| --- | --- |
| MeshPreview | Creates a new MeshPreview instance with a Mesh target. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Releases allocated resources associated with this object. |
| OnPreviewGUI | Call this from an Editor.OnPreviewGUI or ObjectPreview.OnPreviewGUI to draw a mesh preview. |
| OnPreviewSettings | Call this from Editor.OnPreviewSettings or ObjectPreview.OnPreviewSettings to draw additional settings related to the mesh preview. |
| RenderStaticPreview | Creates a texture preview to override Editor.RenderStaticPreview. The current mesh will be drawn. |

### Static Methods

| Method | Description |
| --- | --- |
| GetInfoString | Returns a short summary of the Mesh attributes (ex, does this mesh contain positions, normals, tangents, etc...). |
