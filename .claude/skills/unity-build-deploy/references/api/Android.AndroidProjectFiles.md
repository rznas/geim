<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores C# representations of Gradle project files associated with custom modules or plug-ins(libraries).

Use this class to pass Gradle configuration file objects to the AndroidProjectFilesModifier.OnModifyAndroidProjectFiles callback, allowing modifications to Gradle files during the build process. This class does not support modifying Unity's default Gradle and manifest files.

```csharp
using System.IO;
using UnityEngine;
using Unity.Android.Gradle;
using UnityEditor.Android;public class AndroidProjectFilesExample : AndroidProjectFilesModifier
{
    // Define the path to the Gradle file
    private string _myLibBuildGradle = Path.Combine("unityLibrary", "customPlugin", "build.gradle");
    
    // Configure the required settings/outputs to modify the Android project files
    public override AndroidProjectFilesModifierContext Setup()
    {
        // Initialize the context for modifying project files
        AndroidProjectFilesModifierContext projectFilesContext = new AndroidProjectFilesModifierContext();        // Add the Gradle file to the output
        projectFilesContext.Outputs.AddBuildGradleFile(_myLibBuildGradle);        // Add a custom file to the output
        projectFilesContext.Outputs.AddFileWithContents("CustomOutput/Config.txt");        return projectFilesContext;
    }    //  Modify the Android project files
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Create a build.gradle file
        var buildGradleFile = new ModuleBuildGradleFile();
        projectFiles.SetBuildGradleFile(_myLibBuildGradle, buildGradleFile);        // Add contents to the build.gradle file       
        buildGradleFile.Android.DefaultConfig.VersionName.Set("Example Version Name");        // Check if the Gradle file exists in the project
        if (projectFiles.AdditionalLibrariesBuildGradleFiles.ContainsKey(_myLibBuildGradle))
        {
            // Log a message indicating the Gradle file was found
            Debug.Log($"Gradle file found: {_myLibBuildGradle}");
        }
        else
        {
            Debug.LogWarning($"Gradle file not found: {_myLibBuildGradle}");
        }        // Use the SetFileContents method to create a custom file
        string customFileContent = "This is a custom configuration file created during the build process.";
        projectFiles.SetFileContents("CustomOutput/Config.txt", customFileContent);        Debug.Log("Custom file created successfully.");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| AdditionalLibrariesBuildGradleFiles | A representation of the build.gradle files that were added to plug-ins (libraries) that didn't have a build.gradle file. |

### Public Methods

| Method | Description |
| --- | --- |
| GetData | Gets data that was set in the Setup method. |
| SetBuildGradleFile | Sets a new build.gradle file. |
| SetFileContents | Sets the content of a new file to the specified bytes. |
| SetGradlePropertiesFile | Sets a new gradle.properties file. |
| SetGradleSettingsFile | Sets a new settings.gradle file. |
| SetManifestFile | Sets a new Android Manifest file. |
