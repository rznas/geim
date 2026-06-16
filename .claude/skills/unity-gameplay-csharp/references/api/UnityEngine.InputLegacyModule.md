<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.InputLegacyModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The InputLegacy module implements the Input class used to read player Input.

### Classes

| Class | Description |
| --- | --- |
| AndroidInput | AndroidInput provides support for off-screen touch input, such as a touchpad. |
| Compass | Interface into compass functionality. |
| Gyroscope | Interface into the Gyroscope. |
| Input | Interface into the Legacy Input system. |
| LocationService | Provides methods that allow an application to access the device's location. |

### Structs

| Struct | Description |
| --- | --- |
| AccelerationEvent | Structure describing acceleration status of the device. |
| LocationInfo | Structure describing device location. |
| PenData | Structure describing the status of a pen event. |
| Touch | Structure describing the status of a finger touching the screen. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| DeviceOrientation | Describes physical orientation of the device as determined by the OS. |
| IMECompositionMode | Controls IME input. |
| LocationServiceStatus | Describes the location service status for a device. |
| PenEventType | Indicates the type of action of a pen event. |
| PenStatus | Options for specifying the state of the pen. For example, whether the pen is in contact with the screen or tablet, whether the pen is inverted, and whether buttons are pressed. You can combine states using bitwise OR operators. |
| TouchPhase | Describes phase of a finger touch. |
| TouchType | Describes whether a touch is direct, indirect (or remote), or from a stylus. |
