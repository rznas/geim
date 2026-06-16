<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetGlobalInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds a command to set the value of a given property for all Shaders, where the property has a type of `Int` in ShaderLab code.

When Unity executes the CommandBuffer, it sets the value of the given property for all Shaders. Internally, the shader property types `Float` and `Int` are treated exactly the same; therefore, this function is an alias to SetGlobalFloat.

For properties that use the ShaderLab type `Integer`, which are internally represented as integers, use SetGlobalInteger.
