<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifier.OnModifyAndroidProjectFiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A callback for modifying files in the Android Gradle project after Unity Editor creates it.

Unity invokes this callback after it creates the Android Gradle project. Use this method to modify Android Gradle project files. This callback passes an AndroidProjectFiles object which contains C# representations of Android Gradle project files. For information on when Unity invokes this method during the build process, refer to How Unity builds Android applications.

**Note**: You can use this method to modify Android Gradle project files in custom modules only.
