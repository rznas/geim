<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilitySettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access point to system accessibility settings on the user's device and to events that trigger when the user changes these settings.

These APIs provide information about the user's accessibility preferences and can be used to adapt an application's UI according to the accessibility settings on the user's device. Their values are read-only and are updated when the user changes them in the system settings. 

 These APIs are currently supported on the following platforms:

- RuntimePlatform.Android
- RuntimePlatform.IPhonePlayer

Additional resources:

- Accessibility for mobile applications
- [Sample project using the accessibility APIs](https://github.com/Unity-Technologies/a11y-public-sample )

### Static Properties

| Property | Description |
| --- | --- |
| fontScale | The font scale set by the user in the system settings. |
| isBoldTextEnabled | Whether bold text is enabled in the system settings. |
| isClosedCaptioningEnabled | Whether closed captioning is enabled in the system settings. |

### Events

| Event | Description |
| --- | --- |
| boldTextStatusChanged | Event invoked on the main thread when the user changes the bold text setting in the system settings. |
| closedCaptioningStatusChanged | Event invoked on the main thread when the user changes the closed captioning setting in the system settings. |
| fontScaleChanged | Event invoked on the main thread when the user changes the font scale in the system settings. |
