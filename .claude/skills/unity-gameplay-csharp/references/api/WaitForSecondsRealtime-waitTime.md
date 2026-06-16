<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitForSecondsRealtime-waitTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The given amount of seconds that the yield instruction will wait for.

```csharp
using System.Collections;
using UnityEngine;public class WaitForSecondsRealtimeExample : MonoBehaviour
{
    public float waitTime = 3;    WaitForSecondsRealtime waitForSecondsRealtime;    IEnumerator DoWaitTest()
    {
        Debug.Log("Start waiting: " + Time.realtimeSinceStartup);        if (waitForSecondsRealtime == null)
            waitForSecondsRealtime = new WaitForSecondsRealtime(waitTime);
        else
            waitForSecondsRealtime.waitTime = waitTime;
        yield return waitForSecondsRealtime;        Debug.Log("End waiting: " + Time.realtimeSinceStartup);
    }    void OnGUI()
    {
        if (GUILayout.Button("Start Waiting"))
        {
            StartCoroutine(DoWaitTest());
        }
    }
}
```
