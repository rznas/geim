<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.GetData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | Data key. |
| value | Data value as string. |

### Description

Gets data that was set in the Setup method.

This method is used to get data from the Unity Editor by setting it in the `Setup` method.

 If data with the the given key does not exist, Unity throws an error.

### Parameters

| Parameter | Description |
| --- | --- |
| key | Data key. |
| value | Serializable object. |

### Description

Gets data that was set in the Setup method.

This method is used to get data from the Unity Editor by setting it in the `Setup` method.

 If data with the the given key does not exist, Unity throws an error.

```csharp
using System.IO;
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;
using Unity.Android.Gradle.Manifest;public class ModifyProjectScript : AndroidProjectFilesModifier
{    
    // Define the path to the Android Manifest file
    private string _myLibAndroidManifest = Path.Combine("unityLibrary", "customPlugin", "AndroidManifest.xml");    // Configure the required settings/outputs to modify the Android project files
    public override AndroidProjectFilesModifierContext Setup()
    {
        var projectFilesContext = new AndroidProjectFilesModifierContext();        // Set data example
        projectFilesContext.SetData("companyName", PlayerSettings.companyName);        // Add the Android manifest file to the outputs
        projectFilesContext.Outputs.AddManifestFile(_myLibAndroidManifest);        return projectFilesContext;
    }    //  Modify the Android project files
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // GetData example
        var companyName = projectFiles.GetData("companyName");
        Debug.Log($"Modifying Gradle files for {companyName}");        // Create metadata for the company name
        var companyMeta = new MetaData();
        companyMeta.Attributes.Name.Set("Company Name:");
        companyMeta.Attributes.Value.Set(companyName);        // Create Android manifest file and add metadata
        var androidManifest = new AndroidManifestFile();
        androidManifest.Manifest.Application.MetaDataList.AddElement(companyMeta);        // Set the manifest file
        projectFiles.SetManifestFile(_myLibAndroidManifest, androidManifest);
    }
}
```
