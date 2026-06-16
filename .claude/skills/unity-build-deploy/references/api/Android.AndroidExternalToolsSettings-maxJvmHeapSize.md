<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings-maxJvmHeapSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum java heap size (in megabytes) that will be used for building Android applications.

By default, Unity uses 4096 MB and the minimum allowed value is 128 MB.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class MaxJvmHeapSizeSample
{
    [MenuItem("Build/Set Custom Max JVM Heap Size")]
    public static void SetMaxJvmHeapSize()
    {
        // Set a custom maximum heap size for the JVM (in MB). Example: 1024 MB
        int customHeapSize = 1024;        // Ensure the value is at least the minimum allowed (128 MB)
        if (customHeapSize >= 128)
        {
            AndroidExternalToolsSettings.maxJvmHeapSize = customHeapSize;
            Debug.Log($"Max JVM Heap Size set to: {AndroidExternalToolsSettings.maxJvmHeapSize} MB");
        }
        else
        {
            Debug.LogError($"Invalid heap size. The value must be at least 128 MB. Provided: {customHeapSize} MB");
        }
    }    [MenuItem("Build/Get Current Max JVM Heap Size")]
    public static void GetMaxJvmHeapSize()
    {
        // Retrieve the currently configured maximum JVM heap size
        int currentHeapSize = AndroidExternalToolsSettings.maxJvmHeapSize;        Debug.Log($"Current Max JVM Heap Size: {currentHeapSize} MB");        // Display a warning if the configured heap size is below the minimum allowed
        if (currentHeapSize < 128)
        {
            Debug.LogWarning($"Warning: JVM Heap Size is less than the minimum allowed value (128 MB). Current value: {currentHeapSize} MB");
        }
    }
}
```
