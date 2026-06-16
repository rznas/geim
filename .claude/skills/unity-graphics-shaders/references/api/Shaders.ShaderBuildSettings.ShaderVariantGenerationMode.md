<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shaders.ShaderBuildSettings.ShaderVariantGenerationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for overriding how Unity generates shader variants for the keywords in the shader build settings.

Enables converting shader keywords to a different keyword type than originally declared in the shader assets.

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

### Properties

| Property | Description |
| --- | --- |
| Default | The variant generation mode is not overriden and the keyword type is still determined by each individual shader. |
| MaterialUsageBasedVariants | Generates variants only for the keyword combinations used by the materials in the build. |
| AllVariants | Generates separate shader variants for all the keyword combinations in this declaration. |
| SingleVariantWithDynamicBranching | Generates no shader variants. The code flow for different keywords is handled using runtime branching. |
