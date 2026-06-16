<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.SetGradlePropertiesFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The file path to place the `gradle.properties` file at. This path is relative to the gradle project path. |
| gradleProperties | The representation of module `gradle.properties` file. |

### Description

Sets a new `gradle.properties` file.

To use this method, you must also declare your new file in AndroidProjectFilesModifier.Setup using the AndroidProjectFilesModifierContext.AdditionalOutputs.AddGradlePropertiesFile method.

```csharp
using System.IO;
using Unity.Android.Gradle;
using UnityEditor.Android;public class ModifyProjectScript : AndroidProjectFilesModifier
{
    // Define the path to the Gradle properties file
    private string _myLibGradleProperties = Path.Combine("unityLibrary", "customPlugin", "gradle.properties");    public override AndroidProjectFilesModifierContext Setup()
    {
        var projectFilesContext = new AndroidProjectFilesModifierContext();        projectFilesContext.Outputs.AddGradlePropertiesFile(_myLibGradleProperties);        return projectFilesContext;
    }    //  Modify the Android project files
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Create an object representing a gradle.properties and set it as contents to unityLibrary/customPlugin/gradle.properties
        var gradlePropertiesFile = new GradlePropertiesFile();
        projectFiles.SetGradlePropertiesFile(_myLibGradleProperties, gradlePropertiesFile);
    }
}
```
