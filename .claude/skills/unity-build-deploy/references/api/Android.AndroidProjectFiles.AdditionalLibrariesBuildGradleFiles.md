<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFiles.AdditionalLibrariesBuildGradleFiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A representation of the `build.gradle` files that were added to plug-ins (libraries) that didn't have a `build.gradle` file.

Files are located in `unityLibrary/{pluginName}/build.gradle`.

 If you have a plug-in called `myLibrary` that doesn't contain `build.gradle` file, the file will be generated and placed in `unityLibrary/mylibrary.androidlib/build.gradle`. You can use this path to access the file object in this dictionary.

```csharp
using System.IO;
using UnityEditor.Android;
using Unity.Android.Gradle;public class ModifyProjectScript : AndroidProjectFilesModifier
{
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // Add a Google() repository to a build.gradle file in mylibrary.androidlib library
        var myLibraryBuildGradle = projectFiles.AdditionalLibrariesBuildGradleFiles[Path.Combine("unityLibrary", "mylibrary.androidlib", "build.gradle")];
        myLibraryBuildGradle.Repositories.AddRepository(Repositories.Google);
    }
}
```
