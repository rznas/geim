<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SplashScreen-backgroundColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the background color of the splash screen when no background image is used. The default background color is dark blue RGB(34.44,54).

On Android, use this property to set the background color for the static splash image. In this case, the selected background color blends with the static splash image based on the image transparency levels. Additionally, on Android Unity uses this color to hide the default automatic splash screen which appears on Android 12+ devices. This happens even if PlayerSettings.SplashScreen.background is being set. Therefore, make sure that this color is set to match PlayerSettings.SplashScreen.background image.
