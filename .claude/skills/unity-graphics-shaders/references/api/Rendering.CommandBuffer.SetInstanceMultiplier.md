<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetInstanceMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds a command to multiply the instance count of every draw call by a specific multiplier.

Changing the instance multiplier is useful for stereo rendering optimizations such as single pass instanced rendering. For example, if you set the multiplier to 2, a command that draws one instance, instead draws two, and a command that draws two instances, draws four. See Single Pass Instanced Rendering for more information.

 The multiplier is used until you reset it by calling this function again with a new value. The default multiplier is 1. Passing a parameter value of 0 to this function also sets the instance multiplier to 1.

 The instance multiplier affects draw calls submitted by internal Unity Engine functions as well as CommandBuffer.DrawMesh, CommandBuffer.DrawMeshInstanced, Graphics.DrawMeshInstanced, CommandBuffer.DrawProcedural, and Graphics.DrawProcedural

 Note that the multiplier is not used for the indirect commands, CommandBuffer.DrawMeshInstancedIndirect, Graphics.DrawMeshInstancedIndirect, CommandBuffer.DrawProceduralIndirect, Graphics.DrawProceduralIndirect.
