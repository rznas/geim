<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-permissions-declare.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Declare permissions for an application

Android applications declare what permissions they require in their Android App Manifest. This page explains how to manage permissions for an Android application. For a list of the possible permissions, see [Manifest.permission](https://developer.android.com/reference/android/Manifest.permission).

You can use one of the following methods to modify the Android App Manifest file and manage permissions:

- Create a custom Unity Library Manifest template for Unity to generate the application’s Android App Manifest file from.
- Export the project and modify the Android App Manifest file in Android Studio.
- Use the Android Project Configuration manager to modify Android App Manifest file set up in the custom modules of your **gradle** project.

**Note**: Depending on the Player Settings and Unity APIs that the application uses, Unity automatically adds some required permissions to the Unity Library Manifest. For more information, see Unity-handled permissions.

## Create a template Unity Library Manifest

Unity uses templates to produce the final Gradle project files. You can override the template that Unity uses and new permissions for an application via the template.

For more information, refer to Modify Gradle project files with Gradle template files.

## Use Android Studio

To have complete control over which permissions are in the final Android App Manifest file, export the project and edit the Android App Manifest in Android Studio.

For more information, refer to Modify Gradle project files with Android Studio.

## Use the Android Project Configuration Manager

Use Android Project Configuration Manager to set up and modify custom Gradle project files in C#. You cannot modify the manifest stored in the default `unityLibrary` and `launcher` modules of your gradle project. You can use the API to set up a custom manifest file in a custom module and add new permissions for your application.

For more information, refer to Modify Gradle project files with Android Project Configuration Manager.

## Additional resources

- Android permissions in Unity
- Request runtime permissions
