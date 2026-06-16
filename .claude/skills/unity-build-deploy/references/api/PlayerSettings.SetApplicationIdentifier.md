<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetApplicationIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The named build target that specifies the platform configuration targeted, allowing the application identifier to be retrieved for platforms like iOS, Android, or other defined build targets. |
| identifier | The unique application identifier, such as a bundle identifier on iOS or a package name on Android, used to uniquely identify the application on the specified platform. |

### Description

Sets the application identifier for a platform.

An application identifier is a unique string that distinguishes an app from others on a given platform, ensuring correct app installation, updates, and access to platform-specific services, making it essential for the app's identity and operation within app stores and devices.

The location that the application identifier is stored in depends on the platform build target. For iOS, tvOS, and macOS platforms, the identifier is written to the `CFBundleIdentifier` field within the `info.plist` file, which is generated and included in the build output folder when the Unity project is built. Specifically for macOS, the bundle identifier also appears in the `info.plist` file within the final .app file after the Xcode build process is completed. On Android, the identifier is saved in the `package` field of the `AndroidManifest.xml` file.

```csharp
using UnityEditor;
using UnityEditor.Build;

public static class SetApplicationIdentifierExample
{
    public static void SetAppIdentifier()
    {
        // Set the application identifier for iOS.
        PlayerSettings.SetApplicationIdentifier(NamedBuildTarget.iOS, "com.companyname.yourapp");

        // Set the application identifier for Android.
        PlayerSettings.SetApplicationIdentifier(NamedBuildTarget.Android, "com.companyname.yourapp");

        // Set the application identifier for other platforms if needed
        // PlayerSettings.SetApplicationIdentifier(NamedBuildTarget.tvOS, "com.companyname.yourapp");
        // PlayerSettings.SetApplicationIdentifier(NamedBuildTarget.Standalone, "com.companyname.yourapp");
        // etc.
    }
}
```

Additional resources: PlayerSettings.GetApplicationIdentifier.

### Parameters

| Parameter | Description |
| --- | --- |
| targetGroup | The build target group that specifies the platform configuration targeted, allowing the application identifier to be set for platforms like iOS, Android, or other defined build targets. |
| identifier | The unique application identifier, such as a bundle identifier on iOS or a package name on Android, used to uniquely identify the application on the specified platform. |

### Description

Set the application identifier for the specified platform.

An application identifier is a unique string that distinguishes an app from others on a given platform. This identifier ensures correct app installation, updates, and access to platform-specific services, making it essential for the app's identity and operation within app stores and devices.

The location that the application identifier is stored in depends on the platform build target. For iOS, tvOS, and macOS platforms, the identifier is written to the `CFBundleIdentifier` field within the `info.plist` file, which is generated and included in the build output folder when the Unity project is built. Specifically for macOS, the bundle identifier also appears in the `info.plist` file within the final .app file after the Xcode build process is completed. On Android, the identifier is saved in the `package` field of the `AndroidManifest.xml` file.
