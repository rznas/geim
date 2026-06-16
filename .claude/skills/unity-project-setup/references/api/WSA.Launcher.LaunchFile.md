<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WSA.Launcher.LaunchFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| folder | Folder type where the file is located. |
| relativeFilePath | Relative file path inside the specified folder. |
| showWarning | Shows user a warning that application will be switched. |

### Description

Launches the default app associated with specified file.

Note: if the application associated with file is the same as the one performing the launch, Windows won't open a new application, instead it will simply invoke OnActivated event in App.xaml.[cs/cpp] file.
