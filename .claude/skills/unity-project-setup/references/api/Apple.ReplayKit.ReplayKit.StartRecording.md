<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit.StartRecording.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| enableMicrophone | Enable or disable the microphone while making a recording. Enabling the microphone allows you to include user commentary while recording. The default value is false. |
| enableCamera | Enable or disable the camera while making a recording. Enabling camera allows you to include user camera footage while recording. The default value is false. To actually include camera footage in your recording, you also have to call ShowCameraPreviewAt as well to position the preview view. |

### Returns

**bool** A boolean value of True if recording started successfully or False if an error occurred.

### Description

Start a new recording.

When StartRecording() is first called, an alert window displays asking the user to confirm recording. The alert window displays again if 8 minutes or more have passed since the last time StartRecording() was called.

If ReplayKit.APIAvailable is false, this method does nothing and returns false.
