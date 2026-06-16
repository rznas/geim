<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shaders.ShaderBuildSettings.KeywordOverrideInfo-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the keyword. |
| keepInBuild | Determines if this keyword is kept in the build, or stripped as if it was never declared. |

### Description

Creates a new settings data element for specifying a keyword in a ShaderBuildSettings.KeywordDeclarationOverride.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor.Rendering;
using UnityEditor.Shaders;
using UnityEngine;

using KeywordDeclarationOverride = UnityEditor.Shaders.ShaderBuildSettings.KeywordDeclarationOverride;
using KeywordOverrideInfo = UnityEditor.Shaders.ShaderBuildSettings.KeywordOverrideInfo;

public class ShaderBuildSettingsExample
{
    void AddKeywordDeclarationOverride()
    {
        // Get current shader build settings either from the currently active build profile
        // or if none is active, the global graphics settings.
        ShaderBuildSettings buildSettings = EditorGraphicsSettings.GetShaderBuildSettings();

        // Create a new keyword declaration override
        var newOverride = new KeywordDeclarationOverride
        {
            // Define the set of keywords to override
            keywords = new KeywordOverrideInfo[] { new("_", true), new("LINEAR_BEAUTY", true), new("EXPONENTIAL_BEAUTY", true) },

            // Use dynamic branching. Note: The shader import fails if the shader code isn't compatible with dynamic branching.
            variantGenerationMode = ShaderBuildSettings.ShaderVariantGenerationMode.SingleVariantWithDynamicBranching
        };

        // Check if each keyword is valid
        foreach (var kw in newOverride.keywords)
        {
            Debug.Log(kw.name + (kw.keepInBuild ? ": keep" : ": strip"));
            if (!kw.IsValid())
                return;
        }

        // Check if an override is valid.
        string validationErrors;
        if (!newOverride.IsValid(out validationErrors))
        {
            Debug.LogError(validationErrors);
            return;
        }

        // Get the copy of the existing overrides, and add the new overrides struct
        var kwDeclarationOverrides = new List<KeywordDeclarationOverride>(buildSettings.GetKeywordDeclarationOverridesCopy());
        kwDeclarationOverrides.Add(newOverride);

        // Set the modified keyword declaration overrides on the settings data struct. Throw an exception if the data is invalid.
        try
        {
            buildSettings.KeywordDeclarationOverrides = kwDeclarationOverrides.ToArray();
        }
        catch (ArgumentException ex)
        {
            Debug.LogError(ex.Message);
            return;
        }

        // Apply the modified settings data back to the Graphics settings or Build Profile settings
        EditorGraphicsSettings.SetShaderBuildSettings(buildSettings);
    }
}
```
