<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Microphone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to record to an AudioClip using a connected microphone.

You can get a list of connected microphones from the devices property and then use the Start and End functions to start or end a recording session using one of the available devices.

**Note:** On Unity Web, the `Microphone` class requires user authorization to function. Request authorization via Application.RequestUserAuthorization before use.

### Static Properties

| Property | Description |
| --- | --- |
| devices | A list of available microphone devices, identified by name. |

### Static Methods

| Method | Description |
| --- | --- |
| End | Stops recording. |
| GetDeviceCaps | Get the frequency capabilities of a device. |
| GetPosition | Get the current recording position in samples. |
| IsRecording | Query if a device is currently recording. |
| Start | Start Recording with device. |
