<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/iphone-API.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# iOS Scripting

Most features of the iOS devices are exposed through the Input and Handheld classes. For cross-platform projects, **UNITY_IPHONE** is defined for conditionally compiling iOS-specific C# code.

## Device properties

There are a number of device-specific properties that you can access. See the script reference pages for:

- SystemInfo.deviceUniqueIdentifier
- SystemInfo.deviceName
- SystemInfo.deviceModel
- SystemInfo.operatingSystem

## Anti-piracy check

A common way of hacking an application is by removing the AppStore DRM protection and then redistributing it for free. Use Unity’s anti-piracy check to find out if your application was altered after it was submitted to the AppStore.

Check if your application is genuine (not hacked) with the Application.genuine property. If the property returns `false`, you can warn users they are using a hacked app, or you can disable certain functions.

**Note:** Use Application.genuineCheckAvailable along with `Application.genuine` to verify application integrity. Because accessing the Application.genuine property is a resource-intensive operation, you shouldn’t perform it during frame updates or other time-critical code.

## Vibration support

You can trigger a vibration by calling Handheld.Vibrate. Devices without vibration hardware ignore this call.

## Activity indicator

Mobile operating systems have built-in activity indicators you can use during slow operations. See Handheld.StartActivityIndicator docs for examples.

## Screen orientation

You can control the screen orientation of your application on both iOS and Android devices. By detecting a change in orientation or forcing a specific orientation, you can create app behaviors that depend on how the user holds the device.

To retrieve device orientation, access the Screen.orientation property. Orientation can be one of the following:

| **Orientation** | **Behavior** |
| --- | --- |
| **Portrait** | The device is in portrait mode, with the device held upright and the home button at the bottom. |
| **PortraitUpsideDown** | The device is in portrait mode but upside down, with the device held upright and the home button at the top. |
| **LandscapeLeft** | The device is in landscape mode, with the device held upright and the home button on the right side. |
| **LandscapeRight** | The device is in landscape mode, with the device held upright and the home button on the left side. |

Set Screen.orientation to one of the above orientations or use ScreenOrientation.AutoRotation to control the screen orientation. When you enable autorotation, you can still disable some orientations on a case-by-case basis.

For more information, refer to the following API documentation:

- Screen.autorotateToPortrait
- Screen.autorotateToPortraitUpsideDown
- Screen.autorotateToLandscapeLeft
- Screen.autorotateToLandscapeRight

The screen orientation of your application may vary depending on the device orientation set by the user, regardless of your application’s default orientation setting.

The following table shows the default screen orientation set for your application and the actual orientation the application loads in based on the device orientation.

|  | **Default screen orientation: Autorotate** | **Default screen orientation: Portrait** | **Default screen orientation: Landscape** |
| --- | --- | --- | --- |
| **Device orientation: Autorotate** | The application screen loads in portrait and can rotate between portrait, landscape right, and landscape left orientations (excluding portrait upside down orientation). **Note**: On an iPad, the application screen loads in portrait or landscape orientation based on the device orientation. The screen can rotate between portrait, portrait upside down, landscape right, and landscape left orientations. | The application screen loads and remains locked in portrait orientation. Although portrait upside down orientation is allowed, the screen doesn’t rotate to that orientation. **Note**: On an iPad, the application screen loads in portrait and can rotate between portrait and portrait upside down orientations. The splash screen can load in landscape orientation if the device orientation is landscape on launch. | The splash screen loads in the same orientation as the device orientation. The application screen loads in landscape when the scene loads and can rotate between landscape left or landscape right orientations.   **Note**: On an iPad, the application screen loads in landscape, and can rotate between landscape left and landscape right orientations. The splash screen can load in portrait if the device orientation is portrait on launch. |
| **Device orientation: Portrait lock** | The application screen loads and remains locked in portrait orientation.   **Note**: Whilst in portrait orientation, if you set the ScreenOrientation.AutoRotation property for portrait to false, the application screen rotates to landscape orientation. If you now set the ScreenOrientation.AutoRotation property for landscape to false, the screen orientation remains unchanged. | The application screen loads and remains locked in portrait orientation. | The splash screen loads in portrait orientation, but the application screen loads in landscape when the scene loads. By default, the application screen remains locked in landscape left orientation.   **Note**: On an iPad, the splash screen loads in portrait orientation and the scene loads in landscape orientation. The application screen remains locked in landscape orientation. |
| **Device orientation: Landscape lock** | Not applicable as iPhones don’t have landscape lock setting. If the user turns off the device autorotation setting whilst the application is in landscape, the application screen rotates to and remains locked in portrait orientation.   **Note**: On an iPad, the application loads and remains locked in landscape orientation. | Not applicable as iPhones don’t have landscape lock setting. The application remains locked in portrait orientation.  **Note**: On an iPad, the splash screen loads in landscape and the scene loads in portrait orientation. The application screen remains locked in portrait orientation. | Not applicable as iPhones don’t have landscape lock setting. The application screen loads in landscape and can remain locked in both landscape left or landscape right orientations when the application loads.  **Note**: On an iPad, the application screen loads in landscape and remains locked in either landscape left or landscape right orientation depending on the device orientation. |

## iPad multitasking modes

iPadOS supports multitasking modes that allow users to run multiple applications simultaneously. The available modes depend on the iPadOS version:

| **iPadOS version** | **Available modes** |
| --- | --- |
| iPadOS 9 to 15 | Split View, Slide Over |
| iPadOS 16 to 18 | Split View, Slide Over, Stage Manager |
| iPadOS 26 and later | Full-Screen Apps, Windowed Apps, Stage Manager |

In all modes except Full-Screen Apps, your application can run in a resizable space alongside other apps. On iPadOS 26 and later, both Windowed Apps and Stage Manager allow freely resizable and repositionable windows. Stage Manager builds on Windowed Apps by adding workspace grouping, which lets users organize windows into sets they can switch between.

### Screen API behavior

When your application runs in a multitasking mode, the following behaviors apply:

- Screen.width and Screen.height update as the window or split changes size.
- Screen.safeArea adjusts to reflect the available safe area.
- Screen.fullScreen returns `false` when the app doesn’t occupy the full screen.

**Note:** Your application can’t control the window size. The user and operating system determine window dimensions.

### Orientation-locked applications

If your application restricts orientation to portrait-only or landscape-only in **Player Settings**, the following behavior applies in multitasking modes:

- The application window maintains the correct **aspect ratio** for the locked orientation.
- Screen.orientation continues to report the locked orientation.

An orientation-locked application maintains its aspect ratio when it enters fullscreen mode. If the device’s orientation is different from the application’s locked orientation, for example a portrait-only app on a device in landscape, the application is letterboxed.

### Limitations

- **Orientation lock on iPadOS 26 and later:** Programmatic orientation locking with Screen.orientation only works when **Requires Fullscreen** is enabled in the **Player** settings. When **Requires Fullscreen** is disabled, setting `Screen.orientation` to a specific orientation has no effect on iPadOS 26 and later, even when the app is in full-screen mode.
- **Window size control:** The application can’t set minimum or maximum window sizes.
- **SetResolution in windowed mode:** Screen.SetResolution changes rendering resolution but doesn’t resize the window. After calling it, Screen.width and Screen.height report the render resolution rather than the window size.

## Determining device generation

Different device generations have varied performance and support different functionalities. Use the iOS.DeviceGeneration property to query the device’s generation.

## Display cutout

On some displays, certain areas of the screen might be obscured or non-functional because of other hardware occupying that space. Use Screen.cutouts to return a list of bounding boxes surrounding each cutout.

iOS devices don’t provide a native API to get the display cutout information, so the cutouts are hardcoded in the Xcode project for each available iOS device. You can modify existing data or add additional devices in the Unity Xcode project `ReportSafeAreaChangeForView` function, which is in the `UnityView.mm` file.

## Recording a replay of your game

You can use ReplayKit to record the audio and video of your game, along with audio and video commentary captured from the device’s microphone and **camera**.
