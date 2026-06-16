<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetGlobalInteger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds a command to set the value of a given property for all Shaders, where the property is an integer.

When Unity executes the CommandBuffer, it sets the value of the given property for all Shaders. The effect is as the same as calling Shader.SetGlobalInteger.

For properties that use the legacy ShaderLab type `Int`, which are internally represented as floats, use SetGlobalInt.
