<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-safeArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the safe area of the screen in pixels (Read Only).

On some displays, certain areas of the screen might not be visible to the user. This might be because the display's shape is non-rectangular or in the case of TV displays, it can be caused by overscan. Avoid placing user interface elements in areas outside the safe area rectangle. The maximum size of the safe area is the screen resolution in pixels and is defined as `Rect(0, 0, Screen.width, Screen.height)`.

**Note:** `Screen.safeArea` is defined relative to the Unity Player window, not the physical device screen. If PlayerSettings.Android.renderOutsideSafeArea is disabled, Unity automatically resizes the Player window to fit the device safe area. In that case, the returned Rect typically equals `Rect(0, 0, Screen.width, Screen.height)`, because the Player window no longer includes any unsafe regions.

**Note:** The origin of the safe area is located at the bottom-left corner of the screen. Therefore, if you intend to use `Screen.safeArea` or Screen.cutouts with a UI system like UI Toolkit (where origin is at the top-left corner), you must invert the coordinates. The following code snippet demonstrates how to do that:

`var safeAreaForUIToolkit = new Rect(Screen.safeArea.x, Screen.height - Screen.safeArea.y, Screen.safeArea.width, Screen.safeArea.height);`

The following image depicts how the safe area and cutouts appear on Google Pixel 7 Pro (API 35) in portrait and landscape modes. The green area is the safe area, while the red area is a cutout.


 
 Safe area and cutouts on Google Pixel 7 Pro (API 35) in portrait and landscape modes
