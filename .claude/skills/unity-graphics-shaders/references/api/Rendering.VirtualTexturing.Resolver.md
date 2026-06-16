<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VirtualTexturing.Resolver.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class responsable for virtual texturing feedback analysis.

This class is responsible for performing a GPU->CPU readback (asyncronous) and starting the feedback analysis.

### Properties

| Property | Description |
| --- | --- |
| CurrentHeight | >Height of the texture that the internal buffers can hold. |
| CurrentWidth | Width of the texture that the internal buffers can hold. |

### Constructors

| Constructor | Description |
| --- | --- |
| Resolver | Create a new VirtualTextureResolver object. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes this object. |
| Process | Process the passed in feedback texture. |
| UpdateSize | Update the internal buffers. |
