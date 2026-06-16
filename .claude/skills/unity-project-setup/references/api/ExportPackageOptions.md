<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ExportPackageOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Export package option. Multiple options can be combined together using the | operator.

Additional resources: AssetDatabase.ExportPackage.

### Properties

| Property | Description |
| --- | --- |
| Default | Default mode. Will not include dependencies or subdirectories nor include Library assets unless specifically included in the asset list. |
| Interactive | The export operation will be run asynchronously and reveal the exported package file in a file browser window after the export is finished. |
| Recurse | Will recurse through any subdirectories listed and include all assets inside them. |
| IncludeDependencies | In addition to the assets paths listed, all dependent assets will be included as well. |
| IncludeLibraryAssets | The exported package will include all library assets, ie. the project settings located in the Library folder of the project. |
