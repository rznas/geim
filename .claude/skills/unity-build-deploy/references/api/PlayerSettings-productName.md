<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-productName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of your product.

Define the name of your application. The product name appears as the application title in various places, such as the home screen on mobile, window titles on desktop, and system UIs. `PlayerSettings.productName` is also used to locate the preferences file and define file names for the built Player.

```csharp
// Save this code in the Editor folder of your Project. When you save, Unity compiles this script and changes the settings. using UnityEditor;[InitializeOnLoad]
public static class SetProductNameAutomatically
{
    static SetProductNameAutomatically()
    {
// Replace with your desired product name.
        PlayerSettings.productName = "My New Game"; 
        UnityEngine.Debug.Log("Product name set to: " + PlayerSettings.productName);
    }
}
```
