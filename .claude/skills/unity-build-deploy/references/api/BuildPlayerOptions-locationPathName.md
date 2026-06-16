<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPlayerOptions-locationPathName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the path for the application to be built.

The value of `locationPathName` determines both the location and the file name of the built application. This path can be either relative to the project directory or an absolute path.

Unity doesn't modify this path automatically, so you must include the correct file name and extension based on the target platform. If the directory doesn't exist, Unity creates the directory automatically during the build process.

**Guidelines**:

- The path must include your chosen file name. For example, `Builds/MyApp.apk` for Android, `Builds/MyApp.exe` for Windows. Unity does not append extensions automatically.
- For Android Package, use the `.apk` extension and for Android App Bundle, use the `.aab` extension.
- For Windows, use the `.exe` extension.
- For macOS, use the `.app` extension.
- If the path is relative (e.g., `Builds/MyApp`), Unity will treat it as relative to the project root directory.
- To place the build outside the project directory, specify an absolute path such as `C:/MyBuilds/MyApp.exe`.

Don't use the following project directories for `locationPathName`:

- Assets/
- ProjectSettings/
- Library/
- Packages/
- UserSettings/

**Note:** Paths pointing directly to the user desktop are not allowed.

For more information, refer to Platform build path reference.
