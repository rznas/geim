<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.XcScheme.ReadFromFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path of the file. |

### Description

Reads the scheme from a file identified by the given path.

The existing values of this XcScheme instance are discarded and replaced with the values read from the file.

Get the path to the Unity project build folder containing your Xcode project using a post-process build callback function. XcScheme files are stored within the Xcode project package under the `xcshareddata` folder. Additional resources: PostProcessBuildAttribute.
