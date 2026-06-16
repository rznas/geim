<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Types.DebugSymbolLevel.GradleDefault.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity does not include native debug metadata in the application build. Gradle packages the debug meta data during the build process.

Additionally, the `debugSymbolLevel` entry is not included in the `build.gradle` file. Select this enum value when you don't require a symbol package, such as when native debugging isn't needed or when you don't need to upload symbol files to the Play Store. This option results in slightly faster builds.
