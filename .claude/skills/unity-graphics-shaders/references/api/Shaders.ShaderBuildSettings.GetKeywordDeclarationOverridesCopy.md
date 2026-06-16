<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shaders.ShaderBuildSettings.GetKeywordDeclarationOverridesCopy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**KeywordDeclarationOverride[]** An array of shader keyword declaration overrides.

### Description

Gets a copy of the keyword declaration overrides.

This method gets the keyword declaration override data from a ShaderBuildSettings struct. To make sure data stays valid, you can't read or write the original data. To apply the modified data back to the original data, use ShaderBuildSettings.KeywordDeclarationOverrides.

Additional resources: ShaderBuildSettings, ShaderBuildSettings.KeywordDeclarationOverride, ShaderBuildSettings.KeywordDeclarationOverrides.

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
