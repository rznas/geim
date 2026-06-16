<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-vSyncCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the number of vertical syncs that should pass between each frame.

An integer in the range of 0-4. By default, it is set to 1.

**Desktop and Web**

`vSyncCount` specifies the number of screen refreshes your game allows to pass between frames. In the Unity Editor, this corresponds to the **VSync Count** property under **Project Settings > Quality > Other**.

- If `vSyncCount > 0`, then the field Application.targetFrameRate is ignored, and the effective frame rate is the native refresh rate of the display divided by `vSyncCount`. If `vSyncCount == 1`, rendering is synchronized to the vertical refresh rate of the display.

- If `vSyncCount` is set to 0, Unity does not synchronize rendering to vertical sync, and the field Application.targetFrameRate is instead used to pace the rendered frames.

For example, if you're running the Editor on a 60 Hz display and `vSyncCount == 2`, then the target frame rate is 30 frames per second.

**Android and iOS:** The `vSyncCount` field is always ignored because mobile devices do not allow unsynchronized rendering. Use the Application.targetFrameRate field instead to control the frame rate.

**VR platforms:** Both `vSyncCount` and Application.targetFrameRate are ignored. Instead, the VR SDK controls the frame rate. 

**Note**: You can use Resolution.refreshRateRatio in the Screen.currentResolution property to query the screen's refresh rate for most platforms.

**Varying display native refresh rate**

While historically the native refresh rate for displays often stayed fixed, the new generation mobile devices, laptops, and desktop devices today can influence the native refresh rate of the display to change dynamically at runtime. For example:

- **Desktop**: When user drags a game window from primary monitor over to a secondary monitor, or changes the monitor refresh rate in Display Properties while the game is running, the native display refresh rate can change on the fly.
- **Laptops**: A gaming laptop with a high refresh rate display might only run at 144 H, for example, when the laptop is powered to a wall charger. When unplugged, the display caps to 60 Hz.
- **Mobile**: A mobile phone might restrict the display refresh rate to 60 Hz when the mobile phone battery is being charged, to throttle and prevent overheating due to simultaneous heat buildup from the battery being recharged.
- **Web**: Any of the above conditions might occur, depending on which form factor device the user is browsing on.

Therefore, it is recommended to not hardcode anywhere in the game logic with an assumption that the display refresh rate that is seen at the game startup will persist throughout the lifetime of the application.

 Additional resources: Application.targetFrameRate

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Render at half the refresh rate of the display (Desktop and Web platforms)
        QualitySettings.vSyncCount = 2;
    }
}
```

Additional resources: Quality Settings.
