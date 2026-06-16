<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.WriteSceneParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This struct collects all the WriteSceneSerializedFile parameters in to a single place.

### Properties

| Property | Description |
| --- | --- |
| globalUsage | The global lighting information to use when writing the serialized file. |
| preloadInfo | The set of external object dependencies that need to be loaded when loading the resulting serialzied file. |
| referenceMap | The set of external objects that can be referenced by this serialized file. |
| sceneBundleInfo | Optional Parameter used when writing a scene serialized file for an Asset Bundle. |
| scenePath | The original scene asset path. |
| settings | The settings to use when writing the serialized file. |
| usageSet | The the texture, material, mesh, and shader usage tags to use when writing the serialized file. |
| writeCommand | The struct of internal file name, list of objects, and order of objects to use when writing the serialized file. |
