<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetApplicationIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The named build target that specifies the platform configuration targeted, allowing the application identifier to be retrieved for platforms like iOS, Android, or other defined build targets. |

### Returns

**string** Returns the application identifier associated with a NamedBuildTarget.

### Description

Get the application identifier for the specified platform.

An application identifier is a unique string that distinguishes an app from others on a given platform. This identifier ensures correct app installation, updates, and access to platform-specific services, making it essential for the app's identity and operation within app stores and devices.

The location that the application identifier is stored in depends on the platform build target. For iOS, tvOS, and macOS platforms, the identifier is written to the `CFBundleIdentifier` field within the `info.plist` file, which is generated and included in the build output folder when the Unity project is built. Specifically for macOS, the bundle identifier also appears in the `info.plist` file within the final .app file after the Xcode build process is completed. On Android, the identifier is saved in the `package` field of the `AndroidManifest.xml` file.

```csharp
using UnityEditor.Build;
using UnityEditor;
using UnityEngine;

public static class GetApplicationIdentifierExample
{
    public static void GetAppIdentifier()
    {
        // Retrieve the application identifier for iOS.
        var iOSIdentifier = PlayerSettings.GetApplicationIdentifier(NamedBuildTarget.iOS);
        Debug.Log("iOS Application Identifier: " + iOSIdentifier);

        // Retrieve the application identifier for Android.
        var androidIdentifier = PlayerSettings.GetApplicationIdentifier(NamedBuildTarget.Android);
        Debug.Log("Android Application Identifier: " + androidIdentifier);

        // Retrieve the application identifier for other platforms if needed
        // var tvOSIdentifier = PlayerSettings.GetApplicationIdentifier(NamedBuildTarget.tvOS);
        // Debug.Log("tvOS Application Identifier: " + tvOSIdentifier);
        // var standaloneIdentifier = PlayerSettings.GetApplicationIdentifier(NamedBuildTarget.Standalone);
        // Debug.Log("Standalone Application Identifier: " + standaloneIdentifier);
        // etc.
    }
}
```

Additional resources: PlayerSettings.SetApplicationIdentifier.

### Parameters

| Parameter | Description |
| --- | --- |
| targetGroup | The build target group used to specify the platform configuration targeted, allowing the application identifier to be retrieved for platforms like iOS, Android, or other defined build targets. |

### Returns

**string** Returns the application identifier associated with a BuildTargetGroup.

### Description

Gets the application identifier for a platform.

An application identifier is a unique string that distinguishes an app from others on a given platform. This identifier ensures correct app installation, updates, and access to platform-specific services, making it essential for the app's identity and operation within app stores and devices.

The location that the application identifier is stored in depends on the platform build target. For iOS, tvOS, and macOS platforms, the identifier is written to the `CFBundleIdentifier` field within the `info.plist` file, which is generated and included in the build output folder when the Unity project is built. Specifically for macOS, the bundle identifier also appears in the `info.plist` file within the final .app file after the Xcode build process is completed. On Android, the identifier is saved in the `package` field of the `AndroidManifest.xml` file.
