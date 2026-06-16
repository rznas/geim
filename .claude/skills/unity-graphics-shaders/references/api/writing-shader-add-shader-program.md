<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/writing-shader-add-shader-program.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Add an HLSL shader program

To add a High-Level **Shader** Language (HLSL) program to a shader file, add the code to the `Pass` block. Wrap the code in `HLSLPROGRAM` and `ENDHLSL` macros. For example:

```
Shader "Examples/ExampleShader"
{
    SubShader
    {
        Pass
        {                
              Name "ExamplePassName"

              HLSLPROGRAM

                // Add HLSL shader program code here
                
              ENDHLSL
        }
    }
}
```

## Additional resources

- ShaderLab: adding shader programs
