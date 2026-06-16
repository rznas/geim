<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildOptions.AcceptExternalModificationsToPlayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Appends to an existing Xcode (iOS) project during the build process.

This preserves any changes made to the existing Xcode project settings. With the IL2CPP scripting backend, this setting also allows incremental builds of the generated C++ code to work in Xcode. Appending to Xcode projects is supported only on macOS and Windows platforms.

Additional resources: BuildPipeline.BuildPlayer.
