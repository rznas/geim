<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.Metadata.IAdaptivePerformancePackage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this interface to provide package-level information and actions.

 Adaptive Performance Provider Management will reflect on all types in the project to find implementers of this interface. These instances are used to get information required to integrate your package with the Adaptive Performance Provider Management system.

### Properties

| Property | Description |
| --- | --- |
| metadata | Returns an instance of IAdaptivePerformancePackageMetadata. Information will be used to allow the Adaptive Performance Provider Management to provide settings and loaders through the settings UI. |

### Public Methods

| Method | Description |
| --- | --- |
| PopulateNewSettingsInstance | Allows the package to configure new settings passed in. |
