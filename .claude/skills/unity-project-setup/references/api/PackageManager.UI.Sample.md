<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.UI.Sample.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct for a package's sample, which is accessible from the Details panel of the Package Manager window.

### Properties

| Property | Description |
| --- | --- |
| description | The description of the package sample. |
| displayName | The display name of the package sample. |
| importPath | The full path to where the sample will be imported, under the project assets folder. |
| interactiveImport | Indicates whether to show the import window when importing a sample that is an asset package (a .unitypackage file). |
| isImported | Indicates if the sample has already been imported. |
| resolvedPath | The full path to where the sample is on disk, inside the package that contains the sample. |

### Public Methods

| Method | Description |
| --- | --- |
| Import | Imports the package sample into the `Assets` folder. |

### Static Methods

| Method | Description |
| --- | --- |
| FindByPackage | Finds a list of samples in a package based on a specific version. |
