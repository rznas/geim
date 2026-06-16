<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings-keystoresDedicatedLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Path to a location dedicated to keystores for signing Android applications.

Additional resources: Create a new keystore

```csharp
using System.IO;
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class KeystoresDedicatedLocationSample
{
    [MenuItem("Build/Set Custom Keystores Location")]
    public static void SetKeystoresLocation()
    {
        // Example custom location. Replace this with the actual path.
        string customPath = "/path/to/your/keystores";        // Validate the directory before setting it
        if (Directory.Exists(customPath))
        {
            AndroidExternalToolsSettings.keystoresDedicatedLocation = customPath;
            Debug.Log($"Custom Keystores Location set to: {AndroidExternalToolsSettings.keystoresDedicatedLocation}");
        }
        else
        {
            Debug.LogError($"Invalid Keystores Location. Directory does not exist: {customPath}");
        }
    }    [MenuItem("Build/Get Current Keystores Location")]
    public static void GetKeystoresLocation()
    {
        // Retrieve the currently configured location of the keystores
        string currentLocation = AndroidExternalToolsSettings.keystoresDedicatedLocation;
        
        Debug.Log($"Current Keystores Location: {currentLocation}");
    }
}
```
