<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.iOS.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

iOS specific player settings.

### Static Properties

| Property | Description |
| --- | --- |
| appInBackgroundBehavior | Application behavior when entering background. |
| appleDeveloperTeamID | Set this property with your Apple Developer Team ID. You can find this on the Apple Developer website under Account > Membership . This sets the Team ID for the generated Xcode project, allowing developers to use the Build and Run functionality. An Apple Developer Team ID must be set here for automatic signing of your app. |
| appleEnableAutomaticSigning | Set this property to true for Xcode to attempt to automatically sign your app based on your appleDeveloperTeamID. |
| applicationDisplayName | iOS application display name. |
| backgroundModes | Supported background execution modes (when appInBackgroundBehavior is set to iOSAppInBackgroundBehavior.Custom). |
| buildNumber | The build number of the bundle |
| cameraUsageDescription | Describes the reason for access to the user's camera. |
| deferSystemGesturesMode | Defer system gestures until the second swipe on specific edges. |
| disableDepthAndStencilBuffers | Disable Depth and Stencil Buffers. |
| forceHardShadowsOnMetal | Should hard shadows be enforced when running on (mobile) Metal. |
| hideHomeButton | Specifies whether the home button should be hidden in the iOS build of this application. |
| iOSManualProvisioningProfileID | A provisioning profile Universally Unique Identifier (UUID) that Xcode will use to build your iOS app in Manual Signing mode. |
| iOSManualProvisioningProfileType | A ProvisioningProfileType that will be set when building an iOS Xcode project. |
| iOSUrlSchemes | An array of URL Schemes that are supported by the app. |
| locationUsageDescription | Describes the reason for access to the user's location data. |
| microphoneUsageDescription | Describes the reason for access to the user's microphone. |
| prerenderedIcon | Icon is prerendered. |
| requiresFullScreen | RequiresFullScreen maps to Apple's plist build setting UIRequiresFullScreen, which is used to opt out of being eligible to participate in Slide Over and Split View for iOS 9.0 multitasking. |
| requiresPersistentWiFi | Application requires persistent WiFi. |
| scriptCallOptimization | Script calling optimization. |
| sdkVersion | Set the iOS SDK version to use in the application. |
| showActivityIndicatorOnLoading | Application should show ActivityIndicator when loading. |
| simulatorSdkArchitecture | Choose architecture to build for iOS Simulator. |
| statusBarStyle | Status bar style. |
| targetDevice | Targeted device. |
| targetOSVersionString | Deployment minimal version of iOS. |
| tvOSManualProvisioningProfileID | A provisioning profile Universally Unique Identifier (UUID) that Xcode will use to build your tvOS app in Manual Signing mode. |
| tvOSManualProvisioningProfileType | A ProvisioningProfileType that will be set when building a tvOS Xcode project. |
| useOnDemandResources | Indicates whether application will use On Demand Resources (ODR) API. |
| VisionOSManualProvisioningProfileID | A provisioning profile Universally Unique Identifier (UUID) that Xcode will use to build your visionOS app in Manual Signing mode. |
| VisionOSManualProvisioningProfileType | A ProvisioningProfileType that will be set when building a visionOS Xcode project. |

### Static Methods

| Method | Description |
| --- | --- |
| SetiPadLaunchScreenType | Sets the mode which will be used to generate the app's launch screen Interface Builder (.xib) file for iPad. |
| SetiPhoneLaunchScreenType | Sets the mode which will be used to generate the app's launch screen Interface Builder (.xib) file for iPhone. |
| SetLaunchScreenImage | Sets the image to display on screen when the game launches for the specified iOS device. |
