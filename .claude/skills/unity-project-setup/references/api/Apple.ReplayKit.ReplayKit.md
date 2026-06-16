<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ReplayKit is only available on certain iPhone, iPad and iPod Touch devices running iOS 9.0 or later.

ReplayKit allows you to record the audio and video of your game, along with user commentary through the microphone and user video through the camera. Start a recording with the StartRecording() function, and stop it with StopRecording(). You can preview the recording with the Preview() function, which launches a separate video viewer. In addition to local recordings, you can broadcast your recordings via StartBroadcasting(). There are also functions to pause, resume, and stop broadcasting.

```csharp
using System;
using UnityEngine;
#if PLATFORM_IOS
using UnityEngine.iOS;
using UnityEngine.Apple.ReplayKit;public class Replay : MonoBehaviour
{
    public bool enableMicrophone = false;
    public bool enableCamera = false;    string lastError = "";
    void OnGUI()
    {
        if (!ReplayKit.APIAvailable)
        {
            return;
        }
        var recording = ReplayKit.isRecording;
        string caption = recording ? "Stop Recording" : "Start Recording";
        if (GUI.Button(new Rect(10, 10, 500, 200), caption))
        {
            try
            {
                recording = !recording;
                if (recording)
                {
                    ReplayKit.StartRecording(enableMicrophone, enableCamera);
                }
                else
                {
                    ReplayKit.StopRecording();
                }
            }
            catch (Exception e)
            {
                lastError = e.ToString();
            }
        }        GUI.Label(new Rect(10, 220, 500, 50), "Last error: " + ReplayKit.lastError);
        GUI.Label(new Rect(10, 280, 500, 50), "Last exception: " + lastError);        if (ReplayKit.recordingAvailable)
        {
            if (GUI.Button(new Rect(10, 350, 500, 200), "Preview"))
            {
                ReplayKit.Preview();
            }
            if (GUI.Button(new Rect(10, 560, 500, 200), "Discard"))
            {
                ReplayKit.Discard();
            }
        }
    }    void Update()
    {
        // If the camera is enabled, show the recorded video overlaying the game.
        if (ReplayKit.isRecording && enableCamera)
            ReplayKit.ShowCameraPreviewAt(10, 350, 200, 200);
        else
            ReplayKit.HideCameraPreview();
    }
}
#endif
```

### Static Methods

| Method | Description |
| --- | --- |
| StartBroadcasting | Initiates and starts a new broadcast When StartBroadcast is called, user is presented with a broadcast provider selection screen, and then a broadcast setup screen. Once it is finished, a broadcast will be started, and the callback will be invoked. It will also be invoked in case of any error. |
