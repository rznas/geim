<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserBuildSettings-overrideMaxTextureSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The override for the maximum texture size when importing assets.

This setting lets you override the maximum texture size in pixels that Unity uses when it imports assets. This is mostly useful for local development, to speed up texture importing or build target switching.

This setting affects all textures in your project, and overrides the import settings for individual textures. For example, if a texture's import settings indicate a maximum size of 2048 pixels, but `overrideMaxTextureSize` is set to 512, the texture will be imported at a size of 512 x 512 pixels.

Set this to a non-zero value to specify a maximum size that overrides individual texture import settings. Set this to zero to tell Unity not to apply an override, and to use the maximum size specified in individual texture import settings.

The Unity editor command line argument `-overrideMaxTextureSize` can also be used to set this.

Additional resources: EditorUserBuildSettings.overrideTextureCompression, Texture Importer, command line arguments.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class ExampleScript : MonoBehaviour
{
    [MenuItem("Example/Switch textures to import with max 256 size")]
    public static void OverrideToMax256Size()
    {
        EditorUserBuildSettings.overrideMaxTextureSize = 256;
        AssetDatabase.Refresh();
    }
}
```
