<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawCommandType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enumerates the different draw command types a BatchRendererGroup can draw.

This is used in BatchDrawRange to say from what draw command stream the batch will read the commands.

### Properties

| Property | Description |
| --- | --- |
| Direct | A direct draw command with a mesh and material. |
| Indirect | An indirect draw command with a mesh and material. |
| Procedural | A procedural draw command. Has a material but vertex data is procedurally fetched by the shader. |
| ProceduralIndirect | A procedural indirect draw command. Has a material but vertex data is procedurally fetched by the shader. |
