<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.BackgroundModesOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

"This enumeration type describes the various actions an app can take while it is running in the background on iOS. The values are flags, meaning they can be combined with the | operator.

### Properties

| Property | Description |
| --- | --- |
| None | No background modes are necessary. |
| AudioAirplayPiP | The app plays or records audio while in the background. |
| LocationUpdates | The app keeps the user informed of their location. |
| VoiceOverIP | The app provides Voice over IP functionality. |
| NewsstandDownloads | The app downloads Newsstand content. |
| ExternalAccessoryCommunication | The app communicates with external hardware accessories. |
| UsesBluetoothLEAccessory | The app works with Bluetooth accessories. |
| ActsAsABluetoothLEAccessory | The app acts as a Bluetooth accessory. |
| BackgroundFetch | The app downloads small amounts of data regularly. |
| RemoteNotifications | The app needs to download content when a push notification arrives without delay. |
| Processing | The app executes scheduled tasks while in the background. |
| NearbyInteraction | The app locates and interacts with nearby devices. |
| NetworkAuthentication | The app can authenticate and change networks in the background. |
| PushToTalk | The app launches in response to a push notification and plays audible content in the background. |
