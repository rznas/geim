<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.AdaptivePerformancePackageInitializationBase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface for automating the initial setup of a provider package.

Implement this interface to automatically create default AdaptivePerformanceLoader and settings assets when the package is installed. This one-time initialization process ensures that the necessary assets exist without requiring manual configuration by the user.

### Properties

| Property | Description |
| --- | --- |
| LoaderFullTypeName | The loader full type name for this package |
| LoaderTypeName | The loader type name for this package |
| PackageInitKey | Package initialization key |
| PackageName | Package name property |
| SettingsFullTypeName | The settings full type name for this package |
| SettingsTypeName | The settings type name for this package |

### Public Methods

| Method | Description |
| --- | --- |
| PopulateSettingsOnInitialization | Initialize package settings |
