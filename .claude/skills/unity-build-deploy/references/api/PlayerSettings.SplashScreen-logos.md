<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SplashScreen-logos.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The collection of logos that is shown during the splash screen. Logos are drawn in ascending order, starting from index 0, followed by 1, etc etc.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript
{
    [MenuItem("SplashScreen/AssignLogos")]
    public static void AssignLogos()
    {
        var logos = new PlayerSettings.SplashScreenLogo[2];        // Company logo
        Sprite companyLogo = (Sprite)AssetDatabase.LoadAssetAtPath("Assets/SplashScreen/company logo.jpg", typeof(Sprite));
        logos[0] = PlayerSettings.SplashScreenLogo.Create(2.5f, companyLogo);        // Set the Unity logo to be drawn after the company logo.
        logos[1] = PlayerSettings.SplashScreenLogo.CreateWithUnityLogo();        PlayerSettings.SplashScreen.logos = logos;
    }
}
```
