<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/writing-shader-use-material-properties-code.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Access material properties in a script

Material properties are represented in C# code by the MaterialProperty class.

To access variables defined in your HLSL code, you can call Material.GetFloat, Material.SetFloat. There are other, similar methods; see the Material API documentation for a full list. When you access HLSL variables using these APIs, it doesn’t matter whether the variable is a material property or not.
