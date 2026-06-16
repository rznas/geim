<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-graphicsShaderLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Graphics device shader capability level (Read Only).

This is approximate "shader capability" level of the graphics device, expressed in DirectX shader model terms. Possible values are:

**50** Shader Model 5.0 (DX11.0) 
 **46** OpenGL 4.1 capabilities (Shader Model 4.0 + tessellation) 
 **45** Metal / OpenGL ES 3.1 capabilities (Shader Model 3.5 + compute shaders) 
 **40** Shader Model 4.0 (DX10.0) 
 **35** OpenGL ES 3.0 capabilities (Shader Model 3.0 + integers, texture arrays, instancing) 
 **30** Shader Model 3.0 
 **25** Shader Model 2.5 (DX11 feature level 9.3 feature set) 
 **20** Shader Model 2.0.

Additional resources: shader compilation targets.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Check for shader model 4.5 or better support
        if (SystemInfo.graphicsShaderLevel >= 45)
            print("Woohoo, decent shaders supported!");
    }
}
```
