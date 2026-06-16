<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.SetFileContents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The file to write to. This path is relative to the Gradle project path. |
| contents | Byte array contents. |

### Description

Sets the content of a new file to the specified bytes.

To use this method, you must first declare the new file in AndroidProjectFilesModifier.Setup using the AndroidProjectFilesModifierContext.AdditionalOutputs.AddFileWithContents method.

```csharp
using UnityEditor.Android;public class ModifyProjectScript : AndroidProjectFilesModifier
{
    // Configure the required settings/outputs to modify the Android project files
    public override AndroidProjectFilesModifierContext Setup()
    {
        var projectFilesContext = new AndroidProjectFilesModifierContext();        // Add new file example
        projectFilesContext.Outputs.AddFileWithContents("AdditionalContent/ModifyProjectTextFile.txt");        return projectFilesContext;
    }    //  Modify the Android project files
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Set file contents example
        // Requires file to be added to output in Setup method
        projectFiles.SetFileContents("AdditionalContent/ModifyProjectTextFile.txt", "This was created in the OnModifyAndroidProjectFiles method");
    }
}
```
