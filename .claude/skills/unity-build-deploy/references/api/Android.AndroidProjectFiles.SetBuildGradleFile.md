<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.SetBuildGradleFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The file path to place the `build.gradle` file at. This path is relative to the gradle project path. |
| buildGradle | The representation of module build.gradle file. |

### Description

Sets a new `build.gradle` file.

To use this method, you must also declare your new file in AndroidProjectFilesModifier.Setup using the AndroidProjectFilesModifierContext.AdditionalOutputs.AddBuildGradleFile method.

```csharp
using System.IO;
using Unity.Android.Gradle;
using UnityEditor.Android;public class ModifyProjectScript : AndroidProjectFilesModifier
{
    // Define the path to the Gradle file
    private string _myLibBuildGradle = Path.Combine("unityLibrary", "customPlugin", "build.gradle");    // Configure the required settings/outputs to modify the Android project files
    public override AndroidProjectFilesModifierContext Setup()
    {
        var projectFilesContext = new AndroidProjectFilesModifierContext();        // Inform the build system about the files to be generated during the build process
        projectFilesContext.Outputs.AddBuildGradleFile(_myLibBuildGradle);        return projectFilesContext;
    }    //  Modify the Android project files
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Create an object representing a build.gradle and set it as contents to unityLibrary/customPlugin/build.gradle
        var buildGradleFile = new ModuleBuildGradleFile();
        projectFiles.SetBuildGradleFile(_myLibBuildGradle, buildGradleFile);
    }
}
```
