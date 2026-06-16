<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPlayerWithProfileOptions-locationPathName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path where the application will be built.

The path you specify must end with the correct extension for the file format you will build. This path won't be changed by Unity. Set the file format using EditorUserBuildSettings.buildAppBundle.

- If your file is an Android Package, end `locationPathName` with `.apk`.
- If your file is an Android App Bundle, end `locationPathName` with `.aab`.

Additional resources: EditorUserBuildSettings.GetBuildLocation, Build path requirements for target platforms.
