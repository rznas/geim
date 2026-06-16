<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PluginImporter.SetExcludeFromAnyPlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platformName | Target platform. |

### Description

Exclude platform from compatible platforms when **Any Platform** is set to true.

Useful when you want to apply logic - "plugin is compatible with any platform except this platform".

Note: PluginImporter.SetCompatibleWithPlatform or PluginImporter.SetCompatibleWithEditor will override this setting.

You can also use PluginImporter.GetImporters to check whether or not your plugin is compatible with specific platforms.
