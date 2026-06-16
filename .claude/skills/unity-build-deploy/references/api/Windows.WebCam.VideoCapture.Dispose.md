<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.WebCam.VideoCapture.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

You must call Dispose to shutdown the VideoCapture instance and release the native WinRT objects.

If your VideoCapture instance successfully called VideoCapture.StartVideoModeAsync, you must make sure that you call VideoCapture.StopVideoModeAsync before disposing your VideoCapture instance. If a recording is in progress when Dispose is called, the output file will be corrupted and unusable.

**Note:** Exiting PlayMode in the Editor will automatically Dispose all VideoCapture instances regardless of their current state.
