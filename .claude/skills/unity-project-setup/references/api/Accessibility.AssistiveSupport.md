<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AssistiveSupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access point to APIs that enable applications made with Unity to support assistive technologies.

By default, applications made with Unity are incompatible with screen readers because they use Unityʼs own UI systems, which are not accessible to assistive technologies. This means that while the screen reader is on, it is impossible to interact with a Unity application. 

 You can use this class, along with AccessibilityHierarchy and AccessibilityNode, to make your Unity application natively communicate with and send necessary information to screen readers. 

 These APIs are currently supported on the following platforms:

- RuntimePlatform.Android - starting with Android 8.0 (API level 26)
- RuntimePlatform.IPhonePlayer
- RuntimePlatform.OSXPlayer
- RuntimePlatform.WindowsPlayer

**Note**: These APIs might result in slight behavior differences across platforms. However, they are consistent with the behavior of native user interfaces on each platform and conform to user expectations. Their behavior might not be identical to native user interfaces, but it is a close replica. APIs that behave differently across platforms have those differences described in their documentation. 

 Additional resources:

- Accessibility for mobile applications
- [Sample project using the accessibility APIs](https://github.com/Unity-Technologies/a11y-public-sample )
- [TalkBack user guide for Android](https://support.google.com/accessibility/android/topic/3529932?ref_topic=9078845 )
- [VoiceOver user guide for iOS](https://support.apple.com/en-us/guide/iphone/iph3e2e415f/ios )
- [Narrator user guide for Windows](https://support.microsoft.com/en-us/windows/complete-guide-to-narrator-e4397a0d-ef4f-b386-d8ae-c172f109bdb1 )
- [VoiceOver user guide for macOS](https://support.apple.com/en-us/guide/voiceover/welcome/mac )

### Static Properties

| Property | Description |
| --- | --- |
| activeHierarchy | The accessibility hierarchy that is currently accessible to screen readers. |
| isScreenReaderEnabled | Whether the screen reader is turned on or off on the user's device. |
| notificationDispatcher | Service used to send accessibility notifications to the screen reader. |
| screenReaderStatusOverride | Whether to override the screen reader status given by the operating system. |

### Events

| Event | Description |
| --- | --- |
| nodeFocusChanged | Event invoked on the main thread when the user changes the screen reader focus by navigating to a different accessibility node. |
| screenReaderStatusChanged | Event invoked on the main thread when the user turns the screen reader on or off. |
