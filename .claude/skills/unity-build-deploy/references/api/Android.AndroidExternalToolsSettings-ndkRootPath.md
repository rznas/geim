<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings-ndkRootPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Path to the Android Native Development Kit (NDK) used for building Android applications.

- If you provide an empty string or a null, Unity enables the **Installed with Unity (recommended)** option in the Android section of the **External Tools** window.
- If you provide a valid, non-empty path, Unity disables the **Installed with Unity (recommended)** option and uses the NDK at the specified path.
- If you provide an invalid, non-empty path, Unity throws an exception.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class NdkPathManager
{
    [MenuItem("Build/Set Custom NDK Path")]
    public static void SetNdkPath()
    {
        // Set a custom path for the Native Development Kit (NDK)
        // Replace this with the actual path.
        string customNdkPath = "/path/to/your/ndk";        AndroidExternalToolsSettings.ndkRootPath = customNdkPath;
        Debug.Log($"NDK Path set to: {AndroidExternalToolsSettings.ndkRootPath}");
    }    [MenuItem("Build/Reset NDK Path To Default")]
    public static void ResetNdkPath()
    {
        // Reset NDK path to Unity's default
        AndroidExternalToolsSettings.ndkRootPath = string.Empty;
        Debug.Log("NDK Path reset to 'Installed with Unity (recommended)'.");
    }    [MenuItem("Build/Get Current NDK Path")]
    public static void GetNdkPath()
    {
        // Retrieve the currently configured NDK path
        string currentNdkPath = AndroidExternalToolsSettings.ndkRootPath;        Debug.Log($"Current NDK Path: {currentNdkPath}");
    }
}
```
