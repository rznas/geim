<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-keystoreName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains the path to the Android keystore file.

To set the keystore file path, specify an absolute path or a relative path to your Unity project's location. If you provide an absolute or a relative path to the keystore file within your project folder, Unity stores it as a relative path to the project. If you provide an absolute path to the keystore file inside the dedicated keystore location, Unity stores it as a relative path to the dedicated location. All other absolute paths are stored as specified.

**Note:** Unity doesn't support setting a keystore file path relative to the dedicated keystore location through C# script.

When you access the keystore value, Unity returns the path as displayed in the Project Keystore section of the Player settings window. If the keystore file is stored in the Unity project or a dedicated keystore location, Unity returns a relative path. It is not possible to determine if the path is relative to the Unity project or dedicated keystore location. If the keystore file is stored in any other folder location, Unity returns an absolute path.

For a detailed code example, refer to the useCustomKeystore API documentation.
