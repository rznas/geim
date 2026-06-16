<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings.Gradle-path.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Path to the Gradle used for building Android applications.

- If you provide an empty string or a null, Unity enables the **Installed with Unity (recommended)** option in the Android section of the **External Tools** window.
- If you provide a valid, non-empty path, Unity disables the **Installed with Unity (recommended)** option and uses the Gradle at the specified path.
- If you provide an invalid, non-empty path, Unity throw an exception.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class GradlePathManager
{
    [MenuItem("Build/Set Custom Gradle Path")]
    public static void SetGradlePath()
    {
        // Set a custom path for the Gradle installation.
        // Replace this with the actual path.
        string customGradlePath = "/path/to/your/gradle";        AndroidExternalToolsSettings.Gradle.path = customGradlePath;
        Debug.Log($"Gradle Path set to: {AndroidExternalToolsSettings.Gradle.path}");
    }    [MenuItem("Build/Reset Gradle Path To Default")]
    public static void ResetGradlePath()
    {
        // Reset Gradle path to Unity's default Gradle installation
        AndroidExternalToolsSettings.Gradle.path = string.Empty;
        Debug.Log("Gradle Path reset to 'Installed with Unity (recommended)'.");
    }    [MenuItem("Build/Get Current Gradle Path")]
    public static void GetGradlePath()
    {
        // Retrieve the current Gradle installation path
        string currentGradlePath = AndroidExternalToolsSettings.Gradle.path;        Debug.Log($"Current Gradle Path: {currentGradlePath}");
    }
}
```
