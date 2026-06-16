<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifierContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a container that specifies additional dependencies and additional outputs for `AndroidProjectFilesModifier`.

```csharp
using System.IO;
using Unity.Android.Gradle;
using UnityEditor;
using UnityEditor.Android;
using UnityEngine;public class ModifyProjectScript : AndroidProjectFilesModifier
{
    private string _myLibBuildGradle = Path.Combine("unityLibrary", "customPlugin", "build.gradle");
    public override AndroidProjectFilesModifierContext Setup()
    {
        var projectFilesContext = new AndroidProjectFilesModifierContext();
        // Tell the build system to expect a file to be produced in <gradleProject>/unityLibrary/customPlugin/build.gradle
        projectFilesContext.Outputs.AddBuildGradleFile(_myLibBuildGradle);        // Tell the build system that it should run OnModifyAndroidProjectFiles if MyConfig.json has changes since the last build
        projectFilesContext.Dependencies.DependencyFiles = new[]
        {
            "Assets/MyConfig.json"
        };        // Tell the build system to copy the directory to the Gradle project
        projectFilesContext.AddDirectoryToCopy("Assets/DirectoryToCopy", "destinationName");        // Pass some data/properties from the Editor to the OnModifyAndroidProjectFiles callback
        projectFilesContext.SetData("companyName", PlayerSettings.companyName);
        // Data can be any serializable object
        projectFilesContext.SetData<Vector2>("cursorHotspot", PlayerSettings.cursorHotspot);        return projectFilesContext;
    }    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Produce an object that will be serialized to <gradleProject>/unityLibrary/customPlugin/build.gradle
        var buildGradleFile = new ModuleBuildGradleFile();
        buildGradleFile.Android.AndroidResources.NoCompress.Set(new []{"someValue"});
        // Set the object that will be serialized to <gradleProject>/unityLibrary/customPlugin/build.gradle
        projectFiles.SetBuildGradleFile(_myLibBuildGradle, buildGradleFile);        // Do some changes based on MyConfig.json here
        // ...        // Get the data/properties that were declare in Setup
        var companyName = projectFiles.GetData("companyName");
        var cursorHotspot = projectFiles.GetData<Vector2>("cursorHotspot");
        // Do something based on the data
        // ...
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Dependencies | Represents a container that you can use to specify additional dependencies for the AndroidProjectFilesModifier process depends. |
| Outputs | Represents a container that you can use to specify additional files that will be created in AndroidProjectFilesModifier.OnModifyAndroidProjectFiles. |

### Constructors

| Constructor | Description |
| --- | --- |
| AndroidProjectFilesModifierContext | Container constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| AddDirectoryAsGuidToCopy | Declare a directory to copy into the Gradle project. |
| AddDirectoryToCopy | Declare a directory to copy into the Gradle project. |
| AddFileAsGuidToCopy | Declare an asset to copy into the Gradle project. |
| AddFileToCopy | Declare a file to copy into the Gradle project. |
| SetData | Sets data for the OnModifyAndroidProjectFiles callback. |
