<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.XcScheme.WriteToFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to write the project contents to. |

### Description

Writes the scheme contents to the specified file.

Set the path to the Unity project build folder containing your Xcode project using a post-process build callback function. XcScheme files are stored within the Xcode project package under the `xcshareddata` folder.

Additional resources: PostProcessBuildAttribute.
