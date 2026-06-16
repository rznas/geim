<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPreprocessShaders.OnProcessShader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The shader that Unity is about to compile. |
| snippet | Details about the specific shader code being compiled. |
| data | List of variants that Unity is about to compile for the shader. |

### Description

Implement this interface to receive a callback before a shader snippet is compiled.

When you build your application, Unity compiles each shader source file into multiple shader variants. Unity creates variants for some or all the possible combinations of keywords you define in the shader source file.

 You can use `OnProcessShader` to iterate through each shader and variant Unity is about to compile, and exclude ('strip') variants that use keywords or keyword combinations you don't need. If you strip variants, you can reduce build size, build times, and how much runtime memory Unity uses.

 For example, you can use `OnProcessShader` to remove variants that use the following:

- Keywords that aren't needed for the current target platform.
- Combinations of keywords that are never used.
- Keywords you only use in your debug builds.

Unity invokes the `OnProcessShader` callback in both Player and AssetBundle builds. If there are any shaders already in the cache, then this method isn't invoked for those shaders. To ensure the callback runs for all shaders, perform a clean build. To run it for a specific shader, modify that shader or one of its dependent assets.

 To help you identify keywords and variants to strip, you can check what shader variants you have in your project. For example if you declare a keyword called `DEBUG` in your shader code using `#pragma multi_compile _ DEBUG`, the following Editor script finds and strips shader variants that use the keyword.

 The script does the following when you build your application:

1. Creates a class that implements the `IPreprocessShaders` interface.
2. Creates an instance of `ShaderKeyword` with the name of the keyword.
3. Implements the `OnProcessShader` callback function and iterates over the `data` list, which contains every variant in the shader.
4. Uses `data.shaderKeywordSet.IsEnabled()` to check if each variant uses the keyword.
5. Uses `data.removeAt()` to strip a shader variant if it contains the keyword and you've disabled **Development build** in Build Settings.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEditor.Build;
using UnityEditor.Rendering;

class ShaderDebugBuildPreprocessor : IPreprocessShaders
{
    ShaderKeyword m_KeywordToStrip;

    public ShaderDebugBuildPreprocessor()
    {
        m_KeywordToStrip = new ShaderKeyword("DEBUG");
    }

    // Use callbackOrder to set when Unity calls this shader preprocessor. Unity starts with the preprocessor that has the lowest callbackOrder value.
    public int callbackOrder { get { return 0; } }

    public void OnProcessShader(
        Shader shader, ShaderSnippetData snippet, IList<ShaderCompilerData> data)
        {

        for (int i = 0; i < data.Count; ++i)
        {
            if (data[i].shaderKeywordSet.IsEnabled(m_KeywordToStrip) && !EditorUserBuildSettings.development)
            {
                var foundKeywordSet = string.Join(" ", data[i].shaderKeywordSet.GetShaderKeywords()); 
                Debug.Log("Found keyword DEBUG in variant " + i + " of shader " + shader);
                Debug.Log("Keyword set: " + foundKeywordSet);
                data.RemoveAt(i);
                --i;
            }
        }
    }
}
```

You can also find local keywords. You must create the `ShaderKeyword` instance inside the implementation of `OnProcessShader`, so you can use the callback's `shader` variable in the `ShaderKeyword` constructor.

 For example if you declare a local keyword called `RED` in your shader code using `#pragma multi_compile_local _ RED`, the following script finds and strips shader variants that use the keyword.

```csharp
using System.Collections.Generic;
using UnityEditor.Build;
using UnityEditor.Rendering;
using UnityEngine;
using UnityEngine.Rendering;class MyCustomBuildProcessor : IPreprocessShaders
{    public int callbackOrder { get { return 0; } }     public void OnProcessShader(Shader shader, ShaderSnippetData snippet, IList<ShaderCompilerData> data)
    {
        
        // Create an instance of ShaderKeyword using the constructor that takes a Shader argument
        ShaderKeyword localKeywordToStrip = new ShaderKeyword(shader, "RED");        for (int i = 0; i < data.Count; ++i)
        {
            if (data[i].shaderKeywordSet.IsEnabled(localKeywordToStrip))
            {
                data.RemoveAt(i);
                --i;
            }
        }
    }
}
```

If you strip a variant that a Material needs at runtime, Unity chooses an available shader variant that matches as closely as possible.

 Find out about other ways you can strip shader variants.

 Additional resources: BuildPipeline.BuildPlayer, BuildPipeline.BuildAssetBundles, IPreprocessComputeShaders.
