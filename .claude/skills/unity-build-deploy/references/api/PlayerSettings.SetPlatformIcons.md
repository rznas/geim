<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetPlatformIcons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |
| kind | The PlatformIconKind for the platform. |
| icons | The PlatformIcon array from PlayerSettings.GetPlatformIcons for the same build target and kind. The array length must match the required slot count. Fill each slot with PlatformIcon.SetTexture or PlatformIcon.SetTextures. |

### Description

Assign a list of icons for the specified build target and platform icon kind.

The icons array must be the one returned by PlayerSettings.GetPlatformIcons for the same build target and kind; texture assets must be in the project. The BuildTargetGroup overload is marked for deprecation in the future; use the NamedBuildTarget overload instead.

 Additional resources: PlayerSettings.GetPlatformIcons, PlatformIcon.SetTexture, PlatformIcon.SetTextures. 

 Example: Set application icons for an Android application with the Editor script. Place the script in the `Editor` folder.

```csharp
using UnityEditor.Android;
using UnityEditor;
using UnityEngine;
using UnityEditor.Build;public static class AndroidPlayerSettingsUtility
{
    // `Adaptive` icons for Android require a background and foreground layer for each icon
    public static void SetIcons(Texture2D[][] textures)
    {
        NamedBuildTarget platform = NamedBuildTarget.Android;
        PlatformIconKind kind = AndroidPlatformIconKind.Adaptive;        PlatformIcon[] icons = PlayerSettings.GetPlatformIcons(platform, kind);        //Assign textures to each available icon slot.
        for (int i = 0; i < icons.Length; i++)
        {
            icons[i].SetTextures(textures[i]);
        }
        PlayerSettings.SetPlatformIcons(platform, kind, icons);
    }
}
```

Example: Set application icons for an iOS application with the Editor script. Place the script in the `Editor` folder.

```csharp
using UnityEditor.iOS;
using UnityEditor;
using UnityEngine;
using UnityEditor.Build;public static class iOSPlayerSettingsUtility
{
    // Setting all `App` icons for iOS
    public static void SetAppIcons(Texture2D[] textures)
    {
        NamedBuildTarget platform = NamedBuildTarget.iOS;
        PlatformIconKind kind = iOSPlatformIconKind.Application;        PlatformIcon[] icons = PlayerSettings.GetPlatformIcons(platform, kind);        //Assign textures to each available icon slot.
        for (int i = 0; i < icons.Length; i++)
        {
            icons[i].SetTextures(textures[i]);
        }
        PlayerSettings.SetPlatformIcons(platform, kind, icons);
    }
}
```
