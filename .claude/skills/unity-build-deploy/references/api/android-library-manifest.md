<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-library-manifest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Unity Library Manifest

A Unity Library Manifest is the main Unity manifest and contains information about the Unity Player and its [activity](https://developer.android.com/guide/components/activities/intro-activities). Unity uses a default Unity Library Manifest during the build process to generate the final Android App Manifest for the application. For more information on how to modify this file, refer to Modify Gradle project files.

## Settings

A Unity Library Manifest declares:

- The Unity [activity](https://developer.android.com/guide/components/activities/intro-activities).
- The theme that the Unity activity uses.
- The application’s category (App Category)
- Permissions.
- **VR** modes.
- VR performance.
- Whether to allow the user to resize the application window. This is useful for VR.
- The maximum **aspect ratio**.
- How to react to configuration changes.
- Supported orientations.
- Supported launch modes. 
**Note**: Unity only supports the singleTask launch mode.
- Android UI.
- Whether to use hardware acceleration.
- Which features the application uses such as a gamepad or touchscreen.
- Which graphics APIs the application supports.
- Whether the application supports notches on the device.
- The initial window size.
- Splash screen configuration.
- Whether to extract native libraries when installing the application.
- Which devices the application can run on.
