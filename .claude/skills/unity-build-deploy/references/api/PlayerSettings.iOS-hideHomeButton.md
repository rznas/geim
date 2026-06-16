<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.iOS-hideHomeButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether the home button should be hidden in the iOS build of this application.

On iPhone X the home button is implemented as a system gesture (swipe up from the bottom edge of the screen). The location of this virtual button is indicated by a white bar. If this setting is enabled, the home button is hidden from view whenever the user has not touched the screen for several seconds. Note that iOS Human interface guidelines do not recommend enabling this behavior for applications not containing passive viewing experiences such as viewing a video or a photo slideshow. Home button can be hidden on runtime by changing `iOS.Device.hideHomeButton` property.

```csharp
using UnityEngine;
using UnityEditor;public class HideHomeButtonExample
{
    // This example will create a Menu Item called "Hide Home Button" under "Examples" submenu which when pressed will print the current value of hideHomeButton to console and then change it to "true"
    [MenuItem("Examples/Hide Home Button")]
    public static void SimpleExample()
    {
        // This will print the value of "Hide Home Button" property for iOS (in "Project Settings/Player/Other Settings") to the console 
        Debug.Log("Hide Home Button : " + PlayerSettings.iOS.hideHomeButton);
        
        // This will enable the "Hide Home Button" property for iOS (in "Project Settings/Player/Other Settings")
        PlayerSettings.iOS.hideHomeButton = true;
    }
}
```
