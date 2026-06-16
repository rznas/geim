<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.iOS-deferSystemGesturesMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defer system gestures until the second swipe on specific edges.

Select one or more edges that users must swipe twice to enact system gestures.

On iOS devices, users can perform actions by swiping from different edges of the screen. For example, you can navigate home by swiping up from the bottom of the screen. This can cause issues with games that use swiping for interaction. 

Use `PlayerSettings.iOS.deferSystemGesturesMode` to control which screen edge gestures the system waits for before responding to the second swipe. The system ignores the first swipe to help prevent unintentional actions in the app. The iOS Human Interface Guidelines don't recommend turning on this setting, as it could confuse users.

**Note:** If you enable PlayerSettings.iOS.hideHomeButton, `deferSystemGesturesMode` has no effect because an iPhone's Home button is a system gesture.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.iOS;public class Sample_deferSystemGesturesMode
{
    void DeferSystemGesturesExample()
    {
        // Print current deferSystemGesturesMode value to the console.
        Debug.Log(PlayerSettings.iOS.deferSystemGesturesMode.ToString());        // Set up settings to always prioritize system gestures.
        PlayerSettings.iOS.deferSystemGesturesMode = SystemGestureDeferMode.None;        // Set up settings to defer all system gestures and prioritize your game input.
        PlayerSettings.iOS.deferSystemGesturesMode = SystemGestureDeferMode.All;        // Set up settings to defer system gesture from the top edge of the screen (Control Center, Notifications, etc).
        PlayerSettings.iOS.deferSystemGesturesMode = SystemGestureDeferMode.TopEdge;        // Set up settings to defer system gesture from multiple edges of the screen.
        PlayerSettings.iOS.deferSystemGesturesMode = SystemGestureDeferMode.TopEdge | UnityEngine.iOS.SystemGestureDeferMode.BottomEdge;    }
}
```
