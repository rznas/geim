<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Android specific Player settings.

Use these settings to configure how Unity builds and displays your final application for the Android platform.

```csharp
using UnityEngine;
using UnityEditor;public class AndroidPlayerSettingsSamples : MonoBehaviour
{
    [MenuItem("Tools/Set Android Player settings")]
    public static void SetAndroidPlayerSettings()
    {
        // Set autoRotation behaviour value to user or sensor
        PlayerSettings.Android.autoRotationBehavior = AndroidAutoRotationBehavior.User;
        // Log the current value of autoRotationBehavior
        Debug.Log($"autoRotationBehavior: {PlayerSettings.Android.autoRotationBehavior}");
        
        // Set min aspect ratio to 2.0f
        PlayerSettings.Android.minAspectRatio = 2.0f;
        // Log the minimum aspect ratio
        Debug.Log($"minAspectRatio: {PlayerSettings.Android.minAspectRatio}");
        
        // Set minimum SDK version
        PlayerSettings.Android.minSdkVersion = AndroidSdkVersions.AndroidApiLevel30;
        // Log the minimum SDK version
        Debug.Log($"minSdkVersion: {PlayerSettings.Android.minSdkVersion}");
        
        // Set targetSdkversion
        PlayerSettings.Android.targetSdkVersion = AndroidSdkVersions.AndroidApiLevel30;
        // Log the targetSdkVersion setting
        Debug.Log($"targetSdkVersion: {PlayerSettings.Android.targetSdkVersion}");
        
        // Set textureCompressionFormats to ETC2 and ASTC texture formats
        PlayerSettings.Android.textureCompressionFormats = new TextureCompressionFormat[]
        {
            TextureCompressionFormat.ETC2,
            TextureCompressionFormat.ASTC
        };
        // Log each configured texture compression format
        foreach (TextureCompressionFormat format in PlayerSettings.Android.textureCompressionFormats)
        {
            Debug.Log($"Configured Texture Compression Format: {format}");
        }
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| androidTVCompatibility | Provide a build that is Android TV compatible. |
| androidVulkanDeviceFilterListAsset | Specifies an VulkanDeviceFilterLists asset which provides filtering criteria for allowing or denying Android devices from using Vulkan API and selecting Graphics Jobs mode when running Unity applications. |
| appCategory | Specify the category for your application that best represents its primary functionality. |
| applicationEntry | Application entry classes to include.Note: You can specify multiple application entries for development purposes, this will cause two application icons to appear on Android device. You should always specify a single entry when publishing your app to a store. |
| ARCoreEnabled | Enable support for Google ARCore on supported devices. |
| autoRotationBehavior | Indicate whether your application window rotates based on device orientation settings (User) or device orientation sensor (Sensor), when default orientation is Auto Rotation. |
| blitType | Choose how content is drawn to the screen. |
| buildApkPerCpuArchitecture | Create a separate APK for each CPU architecture. |
| bundleVersionCode | Android bundle version code. |
| defaultWindowHeight | The default vertical size of the Android Player window in pixels. |
| defaultWindowWidth | The default horizontal size of the Android Player window in pixels. |
| disableDepthAndStencilBuffers | Disable Depth and Stencil Buffers. |
| displayOptions | Defines Android display settings that determine how your application renders on the Android devices at runtime. |
| enableArmv9SecurityFeatures | Enable Armv9 security features, including Pointer Authentication (PAuth, PAC) and Branch Target Identification (BTI) for Arm64 builds. |
| forceInternetPermission | Force internet permission flag. |
| forceSDCardPermission | Force SD card permission. |
| fullscreenMode | The display mode for Android Player builds of your application. |
| keyaliasName | Android key alias name. |
| keyaliasPass | Password for the key used for signing an Android application. |
| keystoreName | Contains the path to the Android keystore file. |
| keystorePass | Android keystore password. |
| maxAspectRatio | Maximum aspect ratio supported by the application. |
| minAspectRatio | Minimum aspect ratio which is supported by the application. |
| minifyDebug | Enable to minify debug build. |
| minifyRelease | Enable to minify release build. |
| minimumWindowHeight | The minimum vertical size of the Android Player window in pixels. |
| minimumWindowWidth | The minimum horizontal size of the Android Player window in pixels. |
| minSdkVersion | The minimum API level required for your application to run. |
| minSupportedSdkVersion | Minimum supported Android API level. |
| optimizedFramePacing | Enable optimized frame pacing. |
| predictiveBackSupport | Enable to use Android's OnBackInvokedCallback for handling back events on Android 13 and above. |
| preferredDataLocation | Preferred data location. |
| preferredInstallLocation | Preferred application install location. |
| renderOutsideSafeArea | Extends rendering layout into display cutout area, utilizing all of the available screen space. |
| reportGooglePlayAppDependencies | Indicates whether to track application dependencies for Google Play Store verification. |
| resizeableActivity | Indicates whether your Android application is resizable. |
| runWithoutFocus | Allows your application to continue to run even when it’s not in focus. |
| showActivityIndicatorOnLoading | Application should show ActivityIndicator when loading. |
| splashScreenScale | Android splash screen scale mode. |
| splitApplicationBinary | Split application binary into modules. |
| startInFullscreen | Start in fullscreen mode. |
| targetArchitectures | A set of CPU architectures for the Android build target. |
| targetSdkVersion | The target API level of your application. |
| textureCompressionFormats | Target texture compression formats. |
| useCustomKeystore | Enable application signing with a custom keystore. |
