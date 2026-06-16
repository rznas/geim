<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.SetGradleSettingsFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The file path to place the `settings.gradle` file at. This path is relative to the gradle project path. |
| gradleSettings | The representation of module `settings.gradle` file. |

### Description

Sets a new `settings.gradle` file.

To use this method, you must also declare your new file in AndroidProjectFilesModifier.Setup using the AndroidProjectFilesModifierContext.AdditionalOutputs.AddGradleSettingsFile method.

```csharp
using System.IO;
using Unity.Android.Gradle;
using UnityEditor.Android;public class ModifyProjectScript : AndroidProjectFilesModifier
{
    // Define the path to the Gradle settings file
    private string _myLibGradleSettings = Path.Combine("unityLibrary", "customPlugin", "settings.gradle");    // Configure the required settings/outputs to modify the Android project files
    public override AndroidProjectFilesModifierContext Setup()
    {
        var projectFilesContext = new AndroidProjectFilesModifierContext();        projectFilesContext.Outputs.AddGradleSettingsFile(_myLibGradleSettings);        return projectFilesContext;
    }    //  Modify the Android project files
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Create an object representing a settings.gradle and set it as contents to unityLibrary/customPlugin/settings.gradle
        var gradleSettingsFile = new GradleSettingsFile();
        projectFiles.SetGradleSettingsFile(_myLibGradleSettings, gradleSettingsFile);
    }
}
```
