<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.SetManifestFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The file path to place the `Manifest` file at. This path is relative to the gradle project path. |
| manifest | The representation of Android Manifest file. |

### Description

Sets a new `Android Manifest` file.

To use this method, you must also declare your new file in AndroidProjectFilesModifier.Setup using the AndroidProjectFilesModifierContext.AdditionalOutputs.AddManifestFile method.

```csharp
using System.IO;
using Unity.Android.Gradle.Manifest;
using UnityEditor.Android;public class ModifyProjectScript : AndroidProjectFilesModifier
{
    //  Define the path to the Android Manifest file
    private string _myLibAndroidManifest = Path.Combine("unityLibrary", "customPlugin", "AndroidManifest.xml");    // Configure the required settings/outputs to modify the Android project files
    public override AndroidProjectFilesModifierContext Setup()
    {
        var projectFilesContext = new AndroidProjectFilesModifierContext();        projectFilesContext.Outputs.AddManifestFile(_myLibAndroidManifest);        return projectFilesContext;
    }    //  Modify the Android project files
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Create an object representing an AndroidManifest.xml and set it as contents to unityLibrary/customPlugin/build.gradle
        var androidManifest = new AndroidManifestFile();        // Here you can modify AndroidManifest properties before calling SetManifestFile
        androidManifest.Manifest.AddUsesPermission("RECORD_AUDIO");
        projectFiles.SetManifestFile(_myLibAndroidManifest, androidManifest);
    }
}
```
