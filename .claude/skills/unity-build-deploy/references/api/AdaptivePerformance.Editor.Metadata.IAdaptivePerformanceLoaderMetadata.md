<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.Metadata.IAdaptivePerformanceLoaderMetadata.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides an interface for describing specific loader metadata. Package authors should implement this interface for each loader they provide in their package.

### Properties

| Property | Description |
| --- | --- |
| loaderName | The user-facing name for this loader. Will be used to populate the list in the Adaptive Performance Provider Management UI. |
| loaderType | The full type name for this loader. This is used to allow management to find and create instances of supported loaders for your package. When your package is first installed, the Adaptive Performance Provider Management system will use this information to create instances of your loaders in Assets/Adaptive Performance/Loaders. |
| priority | Defines the priority of the loader. The higher the number, the higher the priority. Basic provider will take 0, google provider takes 1, and samsung provider will take 2. If a user takes the already taken value, the order will not be guaranteed. |
| supportedBuildTargets | The full list of supported build targets for this loader. This allows the UI to only show the loaders appropriate for a specific build target. Returning an empty list or a list containing just BuildTargetGroup.Unknown will make this loader invisible in the UI. |
