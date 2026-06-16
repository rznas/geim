<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-bundleVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The application’s global version number string.

This is the master version string for your project, corresponding to the `Version` field in the Player Settings UI. It is shared across all platforms and is the value returned by Application.version at runtime.

How this string is used depends on the target platform:

- **Android:** Maps to `versionName`. This is the user-facing version displayed in the Google Play Store.
- **iOS / macOS:** Maps to `CFBundleShortVersionString`. This is the `Version` field in the Xcode project and the marketing version in the App Store.
- **Windows / Linux:** Populates the executable's file metadata (specifically the `File Version` and `Product Version` fields on Windows).
- **WebGL:** Included in the build's metadata.

**Note**: While this is the user-facing version, many platforms require an internal build number for store submissions. Refer to PlayerSettings.Android.bundleVersionCode, PlayerSettings.iOS.buildNumber, PlayerSettings.tvOS.buildNumber, PlayerSettings.VisionOS.buildNumber.
