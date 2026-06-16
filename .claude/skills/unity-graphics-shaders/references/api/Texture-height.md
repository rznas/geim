<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-height.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Height of the Texture in pixels.

This value is the height of the Texture at the highest resolution that PlayerSettings.mipStripping allows.

In the Unity Editor, this returns the height of the Texture at full resolution.

At run time, if PlayerSettings.mipStripping is disabled, this returns the height of the Texture at full resolution. If PlayerSettings.mipStripping is enabled, this returns the height of the Texture at the highest resolution that has not been stripped.
 
 Additional resources: QualitySettings.globalTextureMipmapLimit, PlayerSettings.mipStripping.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Print Texture size to the Console
    Texture Texture;
    void Start()
    {
        print("Size is " + Texture.width + " by " + Texture.height);
    }
}
```
