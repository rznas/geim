<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifier.Setup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A callback for setting up prerequisites for modifying custom Android Gradle project files.

You must use `Setup` if your AndroidProjectFilesModifier.OnModifyAndroidProjectFiles callback depends on external dependencies such as an asset or any other file, or if it produces new files, such as custom Gradle project files.

This callback should not do any modifications or produce any files by itself.
