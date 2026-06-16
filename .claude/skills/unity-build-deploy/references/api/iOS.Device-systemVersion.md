<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Device-systemVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The version of the operating system currently running on the device.

iOS version as a string: major.minor or major.minor.patch (for example, "14.0", "8.0.2"). Use System.Version or Version.TryParse for comparison.

```csharp
using UnityEngine;
using UnityEngine.iOS;public class SystemVersionExample : MonoBehaviour
{
    bool allowFeature = true;    void Start()
    {
        // Get the iOS version of the device this is running on
        string systemVersion = Device.systemVersion;        // Separate the version string to major and minor version numbers
        string[] separatedVersion = systemVersion.Split('.');        // Parse the major version number to an integer that can be used for comparison
        int majorVersion = int.Parse(separatedVersion[0]);        // Check if major version number of the device this is running on is below iOS 12
        if (majorVersion < 12)
        {
            // Log a message and disable the version-specific features.
            Debug.Log("Sorry, this amazing feature requires iOS 12 and above to work. Please update your iOS version.");
            allowFeature = false;
        }
    }
}
```
