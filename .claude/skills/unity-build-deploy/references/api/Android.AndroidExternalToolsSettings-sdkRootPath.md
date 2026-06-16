<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings-sdkRootPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Path to the Android Software Development Kit (SDK) used for building Android applications.

- If you provide an empty string or a null, Unity enables the **Installed with Unity (recommended)** option in the Android section of the **External Tools** window.
- If you provide a valid, non-empty path, Unity disables the **Installed with Unity (recommended)** option and uses the SDK at the specified path.
- If you provide an invalid, non-empty path, Unity throws an exception.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class SdkPathManager
{
    [MenuItem("Build/Set Custom SDK Path")]
    public static void SetSdkPath()
    {
        // Set a custom path for the Software Development Kit (SDK)
        string customSdkPath = "/path/to/your/sdk";        AndroidExternalToolsSettings.sdkRootPath = customSdkPath;
        Debug.Log($"SDK Path set to: {AndroidExternalToolsSettings.sdkRootPath}");
    }    [MenuItem("Build/Reset SDK Path To Default")]
    public static void ResetSdkPath()
    {
        // Reset SDK path to Unity's default
        AndroidExternalToolsSettings.sdkRootPath = string.Empty;
        Debug.Log("SDK Path reset to 'Installed with Unity (recommended)' path.");
    }    [MenuItem("Build/Get Current SDK Path")]
    public static void GetSdkPath()
    {
        // Retrieve the currently configured SDK path
        string currentSdkPath = AndroidExternalToolsSettings.sdkRootPath;        Debug.Log($"Current SDK Path: {currentSdkPath}");    }
}
```
