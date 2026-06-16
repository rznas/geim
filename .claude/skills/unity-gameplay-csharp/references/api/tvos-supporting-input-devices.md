<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/tvos-supporting-input-devices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Supporting input devices on tvOS

While tvOS builds on the foundation of iOS, it does create new challenges such as adapting content to function with tvOS inputs, and for display on a bigger screen.

There are two main inputs for tvOS:

- The Apple TV Remote
- Made For iOS (MFi) controllers

## Apple TV Remote

The Apple TV Remote (Siri Remote) is a multi-purpose input device that works as a traditional menu navigation controller, app controller, gyroscope, acceleration sensor, and as a touch gesture device. Unity routes Apple TV Remote input to corresponding Unity APIs, but performs no other processing on that input. Your application might need some adjustments to its input scheme to leverage the Apple TV Remote’s specific input features. For instance, your application can treat it as a traditional application controller, with one analog axis and an extra action button, or your application can use the accelerometer for interactions such as steering. You can experiment with various schemes when porting an app to tvOS.

## Made for iOS (MFi)

Unity provides Made For iOS (MFi), which is a standardized controller support for iOS and tvOS. MFi controllers offer out of the box input mappings, and you can set up custom action mappings from **Edit** > **Project Settings** > **Input Manager**. For more information, refer to Handle Game Controller input and [Game Controllers](https://developer.apple.com/design/human-interface-guidelines/tvos/remote-and-controllers/game-controllers/).

Two further wireless MFi controllers can be connected to an Apple TV device, which effectively turns it into a console. Your application can use the controllers in the same way as iOS MFi controllers, but you must ensure its usability with the Apple TV Remote alone. The tvOS system limits the number of additional controllers to two.

Here are some technical details on accessing specific TV Remote features:

| **Feature** | **Description** |
| --- | --- |
| **Touch area** | Maps to both Input.touches (Touch.type is set to Indirect and is ignored by the Unity GUI), and the Joystick Input API (for example, Input.GetAxis(“Horizontal”)). |
| **Touch area click** | Maps to button A, which then maps to joystick button 14 |
| **Gyroscope** | Maps to Input.gyro. Input.gyro.attitude derives from the gravity vector, and as such it doesn’t rotate around the axis parallel to the gravity vector. The same applies for Input.gyro.rotationRate. |
| **Acceleration** | Maps to Input.acceleration.   **Note**: Input.acceleration derives from the gyroscope API and might have some instabilities. The tvOS SDK doesn’t have a dedicated accelerometer API. |
| **Pause/Play button** | Maps to button X, which then maps to joystick button 15 |
| **Menu button** | A long press calls the tvOS task switcher. You can’t override this behavior.  Your app can process short taps one of two ways:  **a)** Return to the tvOS system home screen, if UnityEngine.tvOS.Remote.allowExitToHome is true.  **b)** Let your app respond to taps (which maps to the Pause button/joystick button 0 when UnityEngine.tvOS.Remote.allowExitToHome is false. This is the default behavior.  Your app should switch between **a)** and **b)** based on its current state:  - If the user is currently interacting with the top menu, enable behavior **a)**.  - If the user is interacting with the app in real time, enable behavior **b)** and call the in-app pause menu when they press this button. |
| **Swipe to the edge of the remote** | Generates directional pad (D-pad) up/down/left/right button presses.  For a list of mappings, refer to Game Controller input mapping. |

You can control the Apple TV Remote operational modes via a dedicated API as follows:

- UnityEngine.tvOS.Remote.allowExitToHome
- UnityEngine.tvOS.Remote.allowRemoteRotation
- UnityEngine.tvOS.Remote.reportAbsoluteDpadValues
- UnityEngine.tvOS.Remote.touchesEnabled

**Note**: When UnityEngine.tvOS.Remote.allowExitToHome is false, the Menu button maps to joystick button 0. This causes a conflict with the default Input window, because it also uses joystick button 0 to map the Submit virtual button. This results in the Menu button triggering actions on UI elements. To fix this issue, remove or modify the Submit virtual button bindings in the Input window (menu: **Edit** > **Project Settings**, then select the **Input** category).
