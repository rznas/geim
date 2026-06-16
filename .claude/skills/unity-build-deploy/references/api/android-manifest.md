<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-manifest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Android App Manifest

The Android App Manifest contains information about an Android application. Each application has a single Android App Manifest [XML](https://en.wikipedia.org/wiki/XML) file at the root of the [source set](https://developer.android.com/studio/build#sourcesets) called `AndroidManifest.xml`. The Android operating system and digital distribution services (for example, Google Play) use Android App Manifests to find information, such as the application’s name, the application’s [entry point](https://developer.android.com/guide/components/activities/intro-activities), Android version support, hardware features support, and application permissions. For more information about the Android App Manifest file, and for a list of settings that it configures, see the Android Developer documentation on Android App Manifests.

To generate an Android App Manifest to represent an application, Gradle merges manifest files from a variety of sources. This includes:

- **Unity Library Manifest**: A manifest file that Unity produces which configures Unity Player activities. For more information, see Unity Library Manifest.
- **Unity Launcher Manifest**: A manifest file that Unity produces which configures the application that wraps the Unity library. For more information, see Unity Launcher Manifest.
- ****Plug-in** manifests**: Manifest files that represent plug-ins such as Android Archives (AAR) or Android Library plug-ins.

For information on how Unity uses these manifest files to generate an Android App Manifest, see Generating an Android App Manifest.

## Generating an Android App Manifest

The Android application build process generate an Android App Manifest file for the application. To do this:

1. Unity uses the Unity Library Manifest as a template for the Android App Manifest. If you override the Unity Library Manifest, Unity uses the file you specify as the template.
2. Unity updates the Unity Library Manifest and Unity Launcher Manifest files with information such as permissions, configuration options, and the features that the application uses.
3. Gradle merges the Unity Library Manifest, Unity Launcher Manifest, and plug-in manifests into one Android App Manifest file.

You can view the Android App Manifest file inside the output Android App Bundle (AAB) or Android Package (APK) using the Android Studio APK Analyzer, or another third-party tool such as [Apktool](https://ibotpeaches.github.io/Apktool/).

**Important**: You cannot edit the Android App Manifest file in the **APK** or AAB. For information on how to override the contents of an Android App Manifest, refer to Modify Gradle project files.

## Permissions

Unity automatically adds the necessary permissions to the manifest based on the Android Player Settings and Unity APIs that your application calls from C# **scripts**. For example:

- The following classes, packages, and Player setting add the `INTERNET` permission.
  - Setting **Internet Access** to **Require** in Android Player settings for **development builds**.
  - UnityWebRequest and Ping classes
  - [System.Net.Sockets](https://learn.microsoft.com/en-us/dotnet/api/system.net.sockets.socket?view=net-8.0) API
  - [Unity Analytics](https://docs.unity.com/ugs/manual/analytics/manual/overview) package and **Crash and Exception Reporting** in the [Cloud Diagnostics package](https://docs.unity.com/ugs/manual/cloud-diagnostics/manual/CloudDiagnostics/WelcometoCloudDiagnostics).
- Using vibration (such as Handheld.Vibrate) adds `VIBRATE`.
- The InternetReachability property adds `ACCESS_NETWORK_STATE`.
- Location APIs (such as LocationService) adds `ACCESS_FINE_LOCATION`
- WebCamTexture APIs add `CAMERA`.
- The Microphone class adds `RECORD_AUDIO`.

If a plug-in requires a permission that is declared in its manifest, Unity automatically adds the permission to the final Android App Manifest during the Gradle merge stage. Note that Unity includes all Unity APIs that the plug-ins use in the permissions list.

You can use the Android Runtime Permission System to request permission at runtime, instead of specifying permissions in the Android App Manifest.

## Additional resources

- Android App Manifest Permissions
- [Add a Network Security Configuration file](https://developer.android.com/privacy-and-security/security-config#manifest)
