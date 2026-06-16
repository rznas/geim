<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidPlatformIconKind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains all Android PlatformIconKind supported by Unity.

Use this class to configure icons used in your Android application. For detailed information on Android icons, refer to the Android developer documentation on Android icon design guidelines.

```csharp
using UnityEditor;
using UnityEditor.Android;
using UnityEditor.Build;
using UnityEngine;public class AndroidPlatformIconKindSample
{
    public static void SetPlatformIconKindToAdaptive(Texture2D[][] textures)
    {
        var platform = NamedBuildTarget.Android;
        var kind = AndroidPlatformIconKind.Adaptive;
        //Get the existing platform icons for the specified kind
        var icons = PlayerSettings.GetPlatformIcons(platform, kind);        //Assign textures to each available icon slot
        for (int i = 0; i < icons.Length; i++)
        {
            icons[i].SetTextures(textures[i]);
        }
        //Set the modified icons back to PlayerSettings
        PlayerSettings.SetPlatformIcons(platform, kind, icons);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| Adaptive | Introduced in Android 8.0 (API level 26). |
