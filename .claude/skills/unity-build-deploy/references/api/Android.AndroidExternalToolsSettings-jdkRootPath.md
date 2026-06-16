<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings-jdkRootPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Path to the Java Development Kit (JDK) used for building Android applications.

- If you provide an empty string or a null, Unity enables the **Installed with Unity (recommended)** option in the Android section of the **External Tools** window.
- If you provide a valid, non-empty path, Unity disables the **Installed with Unity (recommended)** option and uses the JDK at the specified path.
- If you provide an invalid, non-empty path, Unity throws an exception.

```csharp
using UnityEngine; 
using UnityEditor;
using UnityEditor.Android;public class JdkRootSample
{
    [MenuItem("Build/Set Custom JDK Path")]
    public static void SetJdkPath()
    {
        // Set a custom path for the Java Development Kit (JDK).
        // Replace this with the actual path.
        string customJdkPath = "/path/to/your/jdk";
        AndroidExternalToolsSettings.jdkRootPath = customJdkPath;
        Debug.Log($"Custom JDK Path set to: {AndroidExternalToolsSettings.jdkRootPath}");
    }    [MenuItem("Build/Reset To Default JDK")]
    public static void ResetToDefaultJdk()
    {
        // Set JDK path to an empty string to use "Installed with Unity"
        AndroidExternalToolsSettings.jdkRootPath = string.Empty;
        Debug.Log("JDK Path reset to: 'Installed with Unity (recommended)'");
    }    [MenuItem("Build/Get Current JDK Path")]
    public static void GetJdkPath()
    {
        // Retrieve the currently configured JDK path
        string currentJdkPath = AndroidExternalToolsSettings.jdkRootPath;
        Debug.Log($"Current JDK Path: {currentJdkPath}");
    }
}
```
