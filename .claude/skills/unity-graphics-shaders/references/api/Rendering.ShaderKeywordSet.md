<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShaderKeywordSet.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection of ShaderKeyword that represents a specific shader variant.

A `ShaderKeywordSet` represents a single shader variant, a unique combination of keywords which are used to enable or disable functionality within a shader. Note that this struct will not contain information on all keywords available to a shader -- for example, some platform-related keywords are stored in PlatformKeywordSet.

`ShaderKeywordSet` is designed to be accessed at build time via IPreprocessShaders or IPreprocessComputeShaders. Do not instantiate nor use this struct in isolation. Use these callbacks in scriptable stripping to reduce build times by culling unused variants before they are compiled. For example, if you know that two distinct keywords will never need to be enabled at the same time, you may strip any variants with both keywords enabled.

For more information on shader keywords, see Changing how shaders work via branching and keywords.

Additional resources: ShaderKeyword, Shader.EnableKeyword, Shader.EnableKeyword.

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

### Public Methods

| Method | Description |
| --- | --- |
| Disable | Disable a specific shader keyword. |
| Enable | Enable a specific shader keyword. |
| GetShaderKeywords | Return an array with all the enabled keywords in the ShaderKeywordSet. |
| IsEnabled | Check whether a specific shader keyword is enabled. |
