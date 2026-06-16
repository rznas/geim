<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/xr-meta-quest-build-profile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Meta Quest build profile

Understand how to configure the Meta Quest build profile.

In Unity 6.1 and later, you can use the Meta Quest build profile in the Build Profiles window.

By default, the Meta Quest platform shares Player settings with the Android build platform. You can use the Meta Quest build profile to override project settings specifically for Meta Quest.

## Prerequisites

- Android Build Support module for the version of the Editor you’re using.

## Create the Meta Quest build profile

Create the **Meta Quest** build profile in the **Build Profiles** window, as outlined in Create and manage build profiles.

### Choose packages from the platform browser

When you add the Meta Quest build profile, you can select packages for Meta Quest development that Unity installs when you create the build profile.

**Note:** The [OpenXR](https://docs.unity3d.com/Packages/com.unity.xr.openxr@latest/) plug-in is a required package for the Meta Quest build profile, and is automatically installed when you create the build profile.

Optionally, you can install Meta’s packages for Meta Quest development from the **Partner Packages** section of the Platform Browser window. To learn which Meta packages you can install with the **Platform Browser**, refer to Meta packages.

To install partner packages:

1. Select the packages you want to install from the **Partner Packages** section.
2. Select **Add Build Profile** to Add the build profile and install selected packages.

Unity installs the packages you have selected, and you can access them from the Package Manager.

## Default settings reference

When you create a Meta Quest build profile, Unity pre-configures some specific Player and Quality settings.

To access Player settings, click the **Player Settings** button at the top of the **Meta Quest Build Profile** page. The following table outlines the default overridden **Player settings** for the Meta Quest build profile:

| **Setting** | **Default value** |
| --- | --- |
| Graphics API | **Vulkan** |
| Minimal Android API Level | **Android 10.0 (API level 29)** |
| Target API level | **Android 12L (API level 32)** |
| Scripting Backend | **IL2CPP** |
| Target Architecture | **ARM64** |
| **Stereo Rendering Path** | **Instancing** |

To access quality settings, click the **Player Settings** button at the top of the **Meta Quest Build Profile** page and select **Quality** from the left-hand menu. The following table outlines the default overridden **Quality Settings** for the Meta Quest build profile:

| **Setting** | **Default value** |
| --- | --- |
| Anisotropic Filtering | **Forced On** |
| Quality Level | A new **Meta Quest (Build Profile)** option |

## Customize build profile settings

In the **Meta Quest Build Profile** tab, you can configure the following settings derived from the Meta Quest build target:

- **Platform Settings**: customizable build settings specific for the Meta Quest platform. These settings aren’t shared by the Android build target.
- **Player Settings**, **Graphics Settings**, and **Quality Settings**: shared with the Android build target by default. You can customize and override these settings for the Meta Quest platform. To override these settings, select the relevant override option from the **Player Settings Overrides** section to reveal the override options.

## Meta Quest platform settings

The Meta Quest platform is derived from the Android build platform and shares most of its settings with the Android platform. To learn about the settings available in the Android build platform, refer to Android build settings reference.

The following table describes settings that are specific to the Meta Quest platform:

| **Setting** | **Description** |
| --- | --- |
| **Link Time Optimization** | Use the precompiled and link time optimized (ThinLTO) Unity engine code (`libunity.so`) for non-development builds. Use this property for improved runtime performance and reduced memory usage. The options are:   **None**: The project build uses the default Unity engine code.  **Thin**: The project build uses precompiled and thin link time optimized (ThinLTO) Unity engine code. For more information, refer to the ThinLTO Documentation.  **Note:** You can use link time optimized Unity engine code if your project uses IL2CPP scripting backend and Strip Engine Code is disabled. This doesn’t affect IL2CPP compilation. |

## Additional resources

- Android build settings reference
- Introduction to build profiles
