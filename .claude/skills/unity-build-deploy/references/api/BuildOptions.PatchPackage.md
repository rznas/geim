<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildOptions.PatchPackage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Patch a Development app package rather than completely rebuilding it.

Supported only on Android platform.

Use the `PatchPackage` option in your build script to rebuild and deploy project changes. Patching an existing deployment can be significantly faster than rebuilding the entire application. Only Development builds can be patched.

To patch a package, build the project using the following options in your build script: `BuildOptions.PatchPackage` or BuildOptions.Development. Alternatively, you can click the **Patch** or **Patch And Run** buttons on the **Build Settings** window.

This option will implicitly change some options to enhance performance of deployment. The application will not be split using expansion files (such as OBB).
