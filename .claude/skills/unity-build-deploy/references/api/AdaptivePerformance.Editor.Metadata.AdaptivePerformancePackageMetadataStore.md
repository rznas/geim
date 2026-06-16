<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.Metadata.AdaptivePerformancePackageMetadataStore.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provide access to the metadata store. Currently only usable as a way to assign and remove loaders to or from an AdaptivePerformanceManagerSettings instance.

### Static Methods

| Method | Description |
| --- | --- |
| AssignLoader | Assigns a loader of type loaderTypeName to the settings instance. Will instantiate an instance if one can't be found in the user's project folder before assigning it. |
| RemoveLoader | Remove a previously assigned loader from settings. If the loader type is unknown or an instance of the loader can't be found in the project folder, no action is taken. Removal will not delete the instance from the project folder. |
