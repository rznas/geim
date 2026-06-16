<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Device-deferSystemGesturesMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defer system gestures until the second swipe on specific edges.

Select one or more edges that users must swipe twice to enact system gestures.

On iOS devices, users can perform actions by swiping from different edges of the screen. For example, you can naviagte home by swiping up from the bottom of the screen. This can cause issues with games that use swiping for interaction. 

Use `deferSystemGesturesMode` to control which screen edge gestures the system waits for before responding to the second swipe. The first swipe is ignored to help prevent unintentional actions in the app. The iOS Human Interface Guidelines do not recommend turning on this setting, as it could confuse users.

**Note**: The initial value of this setting is defined by the PlayerSettings.iOS.deferSystemGesturesMode property.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.iOS;public class Sample_deferSystemGesturesMode  
{    void DeferSystemGesturesRuntimeExample()
    {
        // Print current deferSystemGesturesMode value to the console
        Debug.Log(Device.deferSystemGesturesMode.ToString());        // Set up settings to always prioritize system gestures
        Device.deferSystemGesturesMode = SystemGestureDeferMode.None;        // Set up settings to defer all system gestures and prioritize your game input
        Device.deferSystemGesturesMode = SystemGestureDeferMode.All;        // Set up settings to defer system gesture from the top edge of the screen (Control Center, Notifications, etc)
        Device.deferSystemGesturesMode = SystemGestureDeferMode.TopEdge;        // Set up settings to defer system gesture from multiple edges of the screen
        Device.deferSystemGesturesMode = SystemGestureDeferMode.TopEdge | SystemGestureDeferMode.BottomEdge;    }
}
```
