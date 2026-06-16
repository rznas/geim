<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.Metadata.IAdaptivePerformancePackageMetadata.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Top-level package metadata interface. Create an instance of this interface to provide metadata information for your package.

### Properties

| Property | Description |
| --- | --- |
| isDefaultPlatformProvider | Information about the status of being a default platform provider. The flag is set by the package info to define the status of a provider on a specific build platform. |
| isDeprecated | Information about the deprecation state of the package. The flag is set to identify deprecated packages. |
| licenseURL | The full URL for the license for your package. The full URL is used to inform the user that a separate package license exists. Must point to the same license as the one in the package.json file which displays in the provider list. The user accepts the license by installing the provider. |
| loaderMetadata | List of IAdaptivePerformanceLoaderMetadata instances describing the data about the loaders your package supports. |
| packageId | The package id used to track and install the package. Must be the same value as the name keyword in the package.json file, otherwise installation will not be possible. |
| packageName | User-facing package name. Should be the same as the value for the displayName keyword in the package.json file. |
| settingsType | The full type name for the settings type for your package. When your package is first installed, the Adaptive Performance Provider Management system will use this information to create an instance of your settings in Assets/Adaptive Performance/Settings. |
