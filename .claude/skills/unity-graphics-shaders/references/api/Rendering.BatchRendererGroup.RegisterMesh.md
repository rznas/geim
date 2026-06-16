<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.RegisterMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | Unity mesh. |

### Returns

**BatchMeshID** BatchRendererGroup mesh ID.

### Description

Registers a mesh in `BatchRendererGroup` and returns its `BatchMeshID`. Each registration of a specific mesh increases its number of owners by 1.
