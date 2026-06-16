<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/writing-shader-usepass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Include a shader pass with the UsePass command

The UsePass command inserts a named Pass from another **Shader** object. You can use this command to reduce code duplication in shader source files.

## Example

This example code creates a **Shader object** called ContainsNamedPass, which contains a Pass called ExampleNamedPass.

```
Shader "Examples/ContainsNamedPass"
{
    SubShader
    {
        Pass
        {    
              Name "ExampleNamedPass"
            
              // The rest of the Pass contents go here.
        }
    }
}
```

This example code creates a Shader object called UseNamedPass, which uses the named Pass from the example code above.

```
Shader "Examples/UsesNamedPass"
{
    SubShader
    {
        UsePass "Examples/ContainsNamedPass/EXAMPLENAMEDPASS"
    }
}
```

## Additional resources

- UsePass directive in ShaderLab reference
