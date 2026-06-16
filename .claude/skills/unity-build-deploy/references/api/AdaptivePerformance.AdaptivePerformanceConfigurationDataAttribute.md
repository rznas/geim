<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceConfigurationDataAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This attribute is used to tag classes as providing build settings support for an Adaptive Performance provider. The unified setting system will present the settings as an inspectable object in the Project Settings window using the built-in inspector UI.

 The implementor of the settings is able to create their own custom UI and the Project Settings system will use that UI in place of the build-in one in the Inspector. See the Extending the Editor page in the Unity Manual for more information.

### Properties

| Property | Description |
| --- | --- |
| buildSettingsKey | The key used to store the singleton instance of these settings within EditorBuildSettings. |
| displayName | The display name that the user sees in the Project Settings window. |

### Constructors

| Constructor | Description |
| --- | --- |
| AdaptivePerformanceConfigurationDataAttribute | Constructor for attribute |
