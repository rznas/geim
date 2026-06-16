<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-brightness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates the current brightness of the screen.

The value of this property is a number between 0.0 and 1.0, where 0 represents the minimum and 1.0 represents the maximum brightness of the screen.

**iOS:** The screen brightness changes that your application makes remain in effect until the device is locked, regardless of whether the application is closed. The system brightness is restored the next time the display is turned on.

**Android:** Screen brightness is set by adjusting '[screenBrightness](https://developer.android.com/reference/android/view/WindowManager.LayoutParams#screenBrightness)' in layout parameters of a window. This does not affect the brightness level set in the **Display Brightness** setting of the device.
