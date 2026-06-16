<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains properties to modify Android specific settings in the **External Tools** window accessible through the **Preferences** window.

It allows you to customize Android development tools by defining paths to the Android SDK, NDK, and other dependencies for your project.

```csharp
using UnityEngine; 
using UnityEditor;
using UnityEditor.Android;public class AndroidExternalToolsSettingsSample
{
    [MenuItem("Tools/Set Android External Tools settings")]
    public static void SetAndroidExternalToolsSettings()
    {
        // Set a custom path for the Java Development Kit (JDK).
        // Replace this with the actual path.
    
        AndroidExternalToolsSettings.jdkRootPath = "/path/to/your/jdk";
        Debug.Log($"Custom JDK Path set to: {AndroidExternalToolsSettings.jdkRootPath}");        // Set a custom maximum heap size for the JVM (in MB). Example: 1024 MB
        // Ensure the value is at least the minimum allowed (128 MB)
        int customHeapSize = 1024;        if (customHeapSize >= 128)
        {
            AndroidExternalToolsSettings.maxJvmHeapSize = 1024;
            Debug.Log($"Max JVM Heap Size set to: {AndroidExternalToolsSettings.maxJvmHeapSize} MB");
        }
        else
        {
            Debug.LogError($"Invalid heap size. The value must be at least 128 MB.");
        }
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| jdkRootPath | Path to the Java Development Kit (JDK) used for building Android applications. |
| keystoresDedicatedLocation | Path to a location dedicated to keystores for signing Android applications. |
| maxJvmHeapSize | The maximum java heap size (in megabytes) that will be used for building Android applications. |
| ndkRootPath | Path to the Android Native Development Kit (NDK) used for building Android applications. |
| sdkRootPath | Path to the Android Software Development Kit (SDK) used for building Android applications. |
