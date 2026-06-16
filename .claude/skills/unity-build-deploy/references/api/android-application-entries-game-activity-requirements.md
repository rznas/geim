<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-application-entries-game-activity-requirements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# GameActivity requirements and compatibility

Refer to the following system requirements and compatibility information before using the GameActivity application entry point in your Unity Android project.

## Unity and GameActivity library version compatibility

The following table lists the recommended GameActivity library version for the latest supported patch release of each Unity version.

| **Unity version** | **GameActivity library version** |
| --- | --- |
| 6000.3 and later | 4.4.0 |
| 6000.2 | 3.0.5 |
| 6000.0 | 4.4.2 |

## Dependencies

GameActivity requires the following dependencies:

- CMake build system
- AndroidX

### CMake

GameActivity uses [CMake](https://developer.android.com/ndk/guides/cmake) to produce the bridge code (`libgame.so`) during the build process.

**Note**: If you provide a custom Android SDK, be sure the SDK has CMake 3.22.1 included.

### AndroidX

GameActivity requires the following AndroidX **Gradle** dependencies:

- `androidx.appcompat:appcompat`
- `androidx.games:games-activity`
- `androidx.core:core`
- `Androidx.constraintlayout`

Gradle installs AndroidX and these dependencies automatically.

## Plug-in compatibility

If you use GameActivity, your application player loop runs on a native thread rather than a Java thread. This means that calling Java APIs like [myLooper](https://developer.android.com/reference/android/os/Looper#myLooper()) from plug-ins will fail. In the case of `myLooper` it’s because there’s no Java looper present on the native thread. This also means that any API that uses APIs such as `myLooper` will also fail. For example, [registerInputDeviceListener](https://developer.android.com/reference/android/hardware/input/InputManager#registerInputDeviceListener(android.hardware.input.InputManager.InputDeviceListener,%20android.os.Handler)) will fail if the handler is null. It’s important to understand this limitation when you create Android plug-ins.

## Choreographer

If you use GameActivity, Unity tries to use the [NDK choreographer](https://developer.android.com/ndk/reference/group/choreographer) to synchronize frame times. If the Device API Level is lower than 24, or your application uses a 32-bit Player and the Device API Level is lower than 29, Unity uses the [Java choreographer](https://developer.android.com/reference/android/view/Choreographer).

## Additional resources

- The Activity application entry point
