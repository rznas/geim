<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPreprocessComputeShaders.OnProcessComputeShader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The compute shader that Unity is about to compile. |
| kernelName | The name of the kernel that Unity is about to compile. |
| data | The list of shader variants that Unity is about to compile. |

### Description

Implement this interface to receive a callback before Unity compiles a compute shader kernel into a build.

Use this callback to examine the compute shader variants that Unity is about to compile into your build, and exclude any variant that you do not want. Excluding unwanted shader variants can reduce build size and build times.

Variants are represented by ShaderCompilerData structs. For each variant, you can check whether given global or local keywords are enabled using ShaderKeywordSet.IsEnabled.

To check whether a variant has a global keyword enabled, create a ShaderKeyword instance with the name of the global keyword. To check whether a variant has a local keyword enabled, create a ShaderKeyword instance with the name of the local keyword and an additional parameter that specifies the compute shader that uses the local keyword.

To exclude a shader variant from the build, directly remove the elements from `data` . Note that removing elements individually in a for loop can be slow; if you are removing a lot of elements, consider moving the unwanted elements to the end of the List and then removing them all in a single operation.

Note that this callback only provides details of compute shaders. To see regular shaders that Unity is about to compile into the build, see IPreprocessShaders .

This callback is invoked for both Player and AssetBundle builds.

Additional resources: Shader variants and keywords, Declaring and using shader keywords in HLSL, BuildPipeline.BuildPlayer, BuildPipeline.BuildAssetBundles.

```csharp
using System.Collections.Generic;
using UnityEditor.Build;
using UnityEditor.Rendering;
using UnityEngine;
using UnityEngine.Rendering;class MyCustomBuildProcessor : IPreprocessComputeShaders
{
    ShaderKeyword m_GlobalKeywordBlue;    public MyCustomBuildProcessor()
    {
        // Global keywords are shader agnostic so they can be initialized early
        m_GlobalKeywordBlue = new ShaderKeyword("_BLUE");
    }    public int callbackOrder { get { return 0; } }    public void OnProcessComputeShader(ComputeShader shader, string kernelName, IList<ShaderCompilerData> data)
    {
        // Local keywords are initialized here as their constructor needs to specify the shader
        ShaderKeyword localKeywordRed = new ShaderKeyword(shader, "_RED");
        for (int i = data.Count - 1; i >= 0; --i)
        {
            // Variants with global keyword _BLUE disabled are included in the build
            if (!data[i].shaderKeywordSet.IsEnabled(m_GlobalKeywordBlue))
                continue;            // Variants with local keyword _RED disabled are included in the build
            if (!data[i].shaderKeywordSet.IsEnabled(localKeywordRed))
                continue;            // Any variants that do not meet the criteria above are stripped from the build.
            // In this example, Unity strips variants that have both _BLUE and _RED keywords enabled.
            data.RemoveAt(i);
        }
    }
}
```
