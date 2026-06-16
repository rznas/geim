<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildOptions.SymlinkSources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Symlink sources when generating the project. This is useful if you're changing source files inside the generated project and want to bring the changes back into your Unity project or a package.

This option affects sources in both Unity projects and packages. Only the following platforms support this option:

**iOS**: When `symlinkSources` is enabled, Unity creates symlinks for libraries (libil2cpp.a, libiPhone-lib.a, etc.). This means you don't need to copy the libraries. Sources with .mm, .m, .cpp, .c, .h, .swift, and .xib extensions are referenced externally from Xcode project.

**Android**: When `symlinkSources` is enabled, Gradle project references .java, .kt and .androidlib plug-in sources externally from Unity project rather than copying the source files directly into the Gradle project. In case of .androidlib plug-in, the plug-in folder must include `build.gradle` file for the `symlinkSources` option to work.

Additional resources: BuildPipeline.BuildPlayer, EditorUserBuildSettings.symlinkSources.
