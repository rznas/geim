<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/xr-support-packages.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# XR packages

The Unity packages that support XR development fall into two broad categories:

- XR provider plug-ins: Provider plug-ins enable support for XR devices and platforms. For example, the Apple ARKit plug-in allows AR applications to run on the iOS platform and the OpenXR plug-in allows applications to run on several VR and MR systems.
- Feature and tool support packages: These packages provide features and tools for developing XR applications.

## XR provider plug-ins

The Unity XR plug-in framework provides the basis for XR development in Unity. You can add support for an XR device to a project by installing and enabling the relevant XR plug-in. You can add or remove plug-ins to the project at any time.

For instructions on how to add XR plug-ins to your project using the **XR Plug-in Management** system, refer to XR Project set up.

Unity supports the following XR plug-ins:

| Plug-in | Supported devices |
| --- | --- |
| [Apple ARKit](https://docs.unity3d.com/Packages/com.unity.xr.arkit@6.4/) | [iOS devices](https://developer.apple.com/documentation/arkit/verifying_device_support_and_user_permission) |
| [Google ARCore](https://docs.unity3d.com/Packages/com.unity.xr.arcore@6.4/) | Handheld [Android devices](https://developers.google.com/ar/devices) |
| [Oculus](https://docs.unity3d.com/Packages/com.unity.xr.oculus@4.5/) | Oculus Rift, Meta Quest 2, Quest 3, Quest Pro. |
| [OpenXR](https://docs.unity3d.com/Packages/com.unity.xr.openxr@1.16/) | Any device with an OpenXR runtime, including Meta headsets, Vive headsets, Valve SteamVR, and others. |
| [Unity OpenXR: Meta](https://docs.unity3d.com/Packages/com.unity.xr.meta-openxr@latest/) | Meta Quest devices. |
| [Unity OpenXR: Android XR](https://docs.unity3d.com/Packages/com.unity.xr.androidxr-openxr@1.2/) | Android XR devices. |
| PlayStation VR (available to registered PlayStation developers) | Sony PS VR and PS VR2 devices. Refer to [PlayStation Partners](https://partners.playstation.net/) for more information. |
| [Apple visionOS XR](https://docs.unity3d.com/Packages/com.unity.xr.visionos@3.1/) | Apple Vision Pro |

Refer to XR Platform System Requirements for system requirements for developing XR projects in Unity.

**Notes:**

- One plug-in can support more than one type of XR device and more than one operating system.
- Plug-ins for additional XR devices might be available from their platform creators or other third parties.
- Unity does not directly support XR on the Web platform. Projects that add support for WebXR, such as [Needle Engine](https://github.com/needle-tools/needle-engine-support/blob/main/documentation/xr.md), [SimpleWebXR](https://github.com/Rufus31415/Simple-WebXR-Unity), and [WebXR Export](https://github.com/De-Panther/unity-webxr-export), are available.
- The [OpenXR Plug-in](https://docs.unity3d.com/Packages/com.unity.xr.openxr@1.16/) integrates core OpenXR features for all XR platforms. [Unity OpenXR: Meta](https://docs.unity3d.com/Packages/com.unity.xr.meta-openxr@latest/) integrates Meta-specific vendor extensions to provide additional features for Meta Quest devices.

## XR support packages

Unity’s XR packages build on the XR plug-in framework to add additional application-level features and developer tools.

The XR packages include:

| Package | Description |
| --- | --- |
| XR Plug-in Management | Adds Project Settings for managing the platforms and plug-ins used by a Unity XR project. Refer to Project setup for information about managing XR plug-ins. |
| [AR Foundation](https://docs.unity3d.com/Packages/com.unity.xr.arfoundation@6.4/) | Provides cross-platform AR features, such as plane detection, meshing, and object tracking. Required for developing AR applications with the Unity XR packages. |
| [XR Interaction Toolkit](https://docs.unity3d.com/Packages/com.unity.xr.interaction.toolkit@3.4/) | Provides interaction components for adding controller-based interaction and manipulation, UI interaction, and movement. Supports VR, MR, and AR. |
| [XR Hands](https://docs.unity3d.com/Packages/com.unity.xr.hands@1.7/) | Provides an interface for accessing hand tracking data in an XR application. You must also use a provider plug-in that supports hand tracking, such as [OpenXR version 1.12](https://docs.unity3d.com/Packages/com.unity.xr.openxr@1.16/). |
| [XR Composition Layers](https://docs.unity3d.com/Packages/com.unity.xr.compositionlayers@2.4/) | Provides a way to submit textures to the device compositor on supported OpenXR devices. You can use composition layers to render elements like text, video, and UIs with improved clarity and sharpness. |
| [PolySpatial visionOS packages](https://docs.unity3d.com/Packages/com.unity.polyspatial.visionos@latest/) | A set of packages that provides support for VR and AR/MR apps on the Apple Vision Pro. Requires a [Unity Pro, Enterprise, or Industry subscription](https://unity.com/pricing). |
| [Unity Mars](https://docs.unity3d.com/Packages/com.unity.mars@latest/) | Provides tools for adapting AR content to the user’s surroundings. [Unity Mars is deprecated as of Unity 6.1.](https://discussions.unity.com/t/unity-mars-is-now-deprecated/1630939) |
| [XR Core Utilities](https://docs.unity3d.com/Packages/com.unity.xr.core-utils@2.5/) | Contains software utilities used by other XR plug-ins and packages. Typically installed in your project as a dependency of other XR packages. |
| [XR Legacy Input Helpers](https://docs.unity3d.com/Packages/com.unity.xr.legacyinputhelpers@3.0/) | Contains software utilities related to XR input. This package is being phased out, but is still installed as a dependency by some XR packages. |

**Note:** If you use the AR Foundation package in a project, the version numbers of AR Foundation, ARCore, and ARKit must all match. That is, if you are using version 6.0 of the AR Foundation package, you must also use version 6.0 of the ARCore and ARKit packages.

## XR platform support notes

The following information provides details about support for specific XR devices.

### Apple visionOS support

You can develop windowed apps with only the visionOS platform support module installed. A windowed app operates in a single, flat window, much like a window on a desktop platform. A user’s gaze and hand gestures are translated into touch input by the visionOS operating system (direct access to the gaze and hand tracking data is not supported in this mode.) You can create or port non-XR Unity applications and games to the Apple Vision Pro device as windowed apps. Refer to visionOS platform for more information.

To develop XR apps (VR, AR, or MR), you must install the visionOS and PolySpatial packages. You must have a [Unity Pro, Enterprise, or Industry subscription](https://unity.com/pricing) to use these packages. Refer to the [PolySpatial visionOS documentation](https://docs.unity3d.com/Packages/com.unity.polyspatial.visionos@latest/) for more information.

### Magic Leap support

**Important**: From Unity 6.3, the Magic Leap (`x86_64`) build target will be limited to existing projects only. Refer to Magic leap in Unity 6.3 and later for more information.

Developing for the Magic Leap 1 is not supported after Unity 2020.3. Developing for the Magic Leap 2 is not supported in new projects in Unity 6.3 and later.

| Unity version | Package version | Device model |
| --- | --- | --- |
| Unity 2019.4–2020.3 | [com.unity.xr.magicleap@6.4](https://docs.unity3d.com/Packages/com.unity.xr.magicleap@6.4) | Magic Leap 1 |
| Unity 2021.1–2022.1 | No version supported. | None |
| Unity 2022.2–6000.2 | [com.unity.xr.magicleap@7.0](https://docs.unity3d.com/Packages/com.unity.xr.magicleap@7.0) | Magic Leap 2 |
| Unity 6000.3.0+ | No version supported (end of life). | None |

#### Magic Leap support in Unity 6.3 and later

In Unity 6.3 and later, the Magic Leap build target isn’t available in the Unity Editor. You can’t access the Magic Leap build target in new projects in Unity 6.3. However, if you port your existing project targeting the Magic Leap build target to Unity 6.3, the build target will continue to be available. The Magic Leap build target will be deprecated in a future version of Unity.

### Meta Quest support

Unity supports development for Meta Quest 2, 3, 3S, and Quest Pro. Refer to Develop for Meta Quest workflow to get started with development for Quest devices.

#### Quest 1 support

Meta has dropped support for the Quest 1 device as of version 51.0 of their Platform SDK. The Platform SDK is included in version 51.0 of the Oculus Integration package on the Unity Asset Store. To continue developing for the Quest 1, you must use version 50 or earlier of the Oculus Integration package. If needed, you can download this version from the Meta Quest downloads page: [https://developer.oculus.com/downloads/package/unity-integration/50.0](https://developer.oculus.com/downloads/package/unity-integration/50.0).

In addition, version 4+ of the Oculus provider plug-in package no longer supports Quest 1 development. You must use an earlier version of the Oculus provider plug-in to continue developing for the Quest 1. Because Oculus 4.0 is the verified package version on Unity 2022.3, you must downgrade to the lower package version.

To install version 3.3.0 of the Oculus package:

1. Open your project in the Unity Editor.
2. Click Oculus XR plug-in version 3.3.0. *The Package Manager window opens, showing the **Add package by name** dialog*
3. Click **Add** to install the last compatible version of the plug-in.

Alternately, you can open the **Add package by name** dialog manually and enter the package id and version. You can also edit the project’s package manifest file directly to reference the required package version:

```
"com.unity.xr.oculus": "3.3.0"
```
