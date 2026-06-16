<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SplashScreen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface to splash screen player settings.

### Static Properties

| Property | Description |
| --- | --- |
| animationBackgroundZoom | The target zoom (from 0 to 1) for the background when it reaches the end of the SplashScreen animation's total duration. Only used when animationMode is AnimationMode.Custom. |
| animationLogoZoom | The target zoom (from 0 to 1) for the logo when it reaches the end of the logo animation's total duration. Only used when animationMode is AnimationMode.Custom. |
| animationMode | The type of animation applied during the splash screen. |
| background | The background Sprite that is shown in landscape mode. Also shown in portrait mode if backgroundPortrait is null. |
| backgroundColor | Sets the background color of the splash screen when no background image is used. The default background color is dark blue RGB(34.44,54). |
| backgroundPortrait | The background Sprite that is shown in portrait mode. |
| blurBackgroundImage | Determines whether Unity applies a blur effect to the background Sprite on the Splash Screen. |
| drawMode | Determines how the Unity logo should be drawn, if it is enabled. If no Unity logo exists in [logos] then the draw mode defaults to DrawMode.UnityLogoBelow. |
| logos | The collection of logos that is shown during the splash screen. Logos are drawn in ascending order, starting from index 0, followed by 1, etc etc. |
| overlayOpacity | To increase the contrast between the background and logos, you apply an overlay color modifier. Use the overlay opacity to adjust the strength of this effect. |
| show | Set this property to true to make the Splash Screen appear when the application is launched. Set this property to false to disable the Splash Screen. |
| showUnityLogo | Set this to true to show the Unity logo during the Splash Screen. Set it to false to disable the Unity logo. |
| unityLogoStyle | The style to use for the Unity logo during the Splash Screen. |
