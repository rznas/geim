<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.iOS-sdkVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the iOS SDK version to use in the application.

Specify the iOS SDK version your Unity project will use when building for the iOS platform. Select between the following options:

- **DeviceSDK**: Target physical iOS devices for production and submission.
- **SimulatorSDK**: Target the iOS Simulator on macOS for testing when a physical device is unavailable.

```csharp
using UnityEditor;
using UnityEditor.iOS;// Save this code in the Editor folder of your Project. When you save, Unity compiles this script and changes the settings. public static class UpdateiOSSdkVersion
{
    [InitializeOnLoadMethod]
    public static void UpdateiOSSdkVersionAutomatically()
    {
        // Set the desired iOS SDK version here. Choose one of the following:        //iOSSdkVersion.DeviceSDK or iOSSdkVersion.SimulatorSDK.        PlayerSettings.iOS.sdkVersion = iOSSdkVersion.DeviceSDK;        // Log the result
        UnityEngine.Debug.Log("iOS SDK Version updated to: " + PlayerSettings.iOS.sdkVersion);
    }
}
```

Additional resources: iOSSdkVersion.
