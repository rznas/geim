<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit.StartBroadcasting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | A callback for getting the status of broadcast initiation. |
| enableMicrophone | Enable or disable the microphone while broadcasting. Enabling the microphone allows you to include user commentary while broadcasting. The default value is false. |
| enableCamera | Enable or disable the camera while broadcasting. Enabling camera allows you to include user camera footage while broadcasting. The default value is false. To actually include camera footage in your broadcast, you also have to call ShowCameraPreviewAt as well to position the preview view. |

### Description

Initiates and starts a new broadcast When StartBroadcast is called, user is presented with a broadcast provider selection screen, and then a broadcast setup screen. Once it is finished, a broadcast will be started, and the callback will be invoked. It will also be invoked in case of any error.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Apple.ReplayKit;public class CubController : MonoBehaviour
{
    // ....    void OnGUI()
    {
        GUI.Box(new Rect(2 * 10, 2 * 10, 2 * 200, 4 * 90), "Broadcasting");        if (GUI.Button(new Rect(2 * 20, 2 * 40, 2 * 180, 2 * 30), "Start Broadcasting"))
        {
            ReplayKit.StartBroadcasting((bool success, string error) => Debug.Log(string.Format("Start : {0}, error : `{1}`", success, error)));
        }
        if (GUI.Button(new Rect(2 * 20, 2 * 70, 2 * 180, 2 * 30), "Stop Broadcasting"))
        {
            ReplayKit.StopBroadcasting();
        }        GUI.Label(new Rect(2 * 20, 2 * 100, 2 * 180, 2 * 10), "broadcastingAPIAvailable : " + (ReplayKit.broadcastingAPIAvailable ? "true" : "false"));
        GUI.Label(new Rect(2 * 20, 2 * 120, 2 * 180, 2 * 10), "isBroadcasting : " + (ReplayKit.isBroadcasting ? "true" : "false"));
        GUI.Label(new Rect(2 * 20, 2 * 140, 2 * 180, 2 * 10), "broadcastURL : " + ReplayKit.broadcastURL);
        GUI.Label(new Rect(2 * 20, 2 * 160, 2 * 180, 2 * 10), "lastError : " + ReplayKit.lastError);
    }
}
```
