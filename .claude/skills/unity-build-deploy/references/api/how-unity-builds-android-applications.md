<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/how-unity-builds-android-applications.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# How Unity builds Android applications

Unity uses Gradle to build Android applications so it’s useful to understand the build process and how Unity interacts with Gradle. Gradle lets you use Player Settings and other Unity windows to configure most aspects of the final build, however for more control, you must overwrite manifest and template files, or export your project and edit it in Android Studio.

## The build process

To build Android applications:

1. Unity calls AndroidProjectFilesModifier.Setup for all AndroidProjectFilesModifier interfaces. You can use this callback to set up prerequisites for modifying custom Android Gradle project files. For more information, refer to AndroidProjectFilesModifier.Setup.
2. Unity collects project resources, code libraries, **plug-ins**, Gradle templates, and manifest templates from your Unity project and uses them to create a valid Gradle project.
3. Unity adds and updates values inside Gradle templates and manifest files based on the Unity project’s Player settings and build settings.
4. If you chose to export the project and not build it, and use the **IL2CPP** scripting backend, Unity places C++ source files produced from your C# **scripts** into the Gradle project. Otherwise, if you chose to build the project, Unity places the `libil2cpp.so` library into the Gradle project.
5. Unity calls OnModifyAndroidProjectFiles for all AndroidProjectFilesModifier interfaces. You can use this callback to modify Gradle project file values. For more information, refer to Modify Gradle project files with the Android Project Configuration Manager.
**Note**: You can modify Android Gradle project files in custom modules only.
6. Unity calls OnPostGenerateGradleAndroidProject for all IPostGenerateGradleAndroidProject interfaces. You can use this callback to modify or move files before Gradle builds the application.
7. Unity runs Gradle to build the application from the Gradle project. Gradle merges the Unity Library Manifest, Unity Launcher Manifest, and plug-in manifests into one Android App Manifest file.

## Incremental build pipeline

Unity uses the incremental build pipeline when it builds the Player for Android. See the following Android-specific incremental build pipeline behaviors:

- Unity incrementally builds/generates:
  - Gradle files
  - Manifest files
  - Assets packs
  - APK expansion files (obbs)
  - Uncompressed asset splits
  - Android symbols zip files
- Unity incrementally copies:
  - Player binaries
  - Gradle resources
- The last step in the build process is to run Gradle. From this point, the build process doesn’t use the incremental build pipeline and it’s up to Gradle to track dependencies.

If you implement IPostGenerateGradleAndroidProject and modify or move any Android file or asset that the incremental build pipeline uses, it can cause issues when you build your project. If you only want to modify Gradle project files, it’s best practice to use the Android Project Configuration Manager instead of `IPostGenerateGradleAndroidProject`. If you must use `IPostGenerateGradleAndroidProject` for your use case and need to work around incremental build pipeline issues, refer to Creating clean builds.
**Note**: You can use Android Project Configuration Manager to modify Android Gradle project files in custom modules only.

## Additional resources

- Build your application for Android
