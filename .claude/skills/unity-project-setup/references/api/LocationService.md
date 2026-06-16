<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LocationService.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods that allow an application to access the device's location.

### Properties

| Property | Description |
| --- | --- |
| isEnabledByUser | Indicates whether the device allows the application to access the location service. |
| lastData | The last geographical location that the device registered. |
| status | Returns the location service status. |

### Public Methods

| Method | Description |
| --- | --- |
| Start | Starts location service updates. |
| Stop | Stops location service updates. This is useful to save battery power when the application doesn't require the location service. |
