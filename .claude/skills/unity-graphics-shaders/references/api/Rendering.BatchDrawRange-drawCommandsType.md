<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawRange-drawCommandsType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The BatchDrawCommandType that apply to draw commands in this draw range.

The value set here controls from which command array in BatchCullingOutputDrawCommands the range will read commands from.

 A value of BatchDrawCommandType.Direct will read from BatchCullingOutputDrawCommands.drawCommands, a value of BatchDrawCommandType.Indirect will read from BatchCullingOutputDrawCommands.indirectDrawCommands and so on.
