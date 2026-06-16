<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserBuildSettings-overrideTextureCompression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The asset importing override of texture compression.

This setting lets you override the texture compression settings that Unity uses when it imports assets. This is mostly useful for local development, to speed up texture importing or build target switching.

This setting affects all textures in your project, and overrides the import settings for individual textures. For example, if a texture's import settings indicate that a "Normal" compressor quality should be used, but `overrideTextureCompression` is set to OverrideTextureCompression.ForceFastCompressor, the texture will be compressed with "Fast" compressor quality setting.

Overriding the texture compression format can increase the speed of the import process considerably, but it is important to understand the implications. For information on the effects of the different values, see the documentation for the OverrideTextureCompression enum.

The Unity Editor command line argument `-overrideTextureCompression` can also be used to set this. **Important**: This setting persists in the `Library/EditorUserBuildSettings.asset` file even if you remove the command line flag.

Additional resources: OverrideTextureCompression, EditorUserBuildSettings.overrideMaxTextureSize, Texture Importer, command line arguments.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class ExampleScript : MonoBehaviour
{
    [MenuItem("Example/Switch textures to import with Fast compressor")]
    public static void OverrideToFastCompressor()
    {
        EditorUserBuildSettings.overrideTextureCompression = OverrideTextureCompression.ForceFastCompressor;
        AssetDatabase.Refresh();
    }
}
```
