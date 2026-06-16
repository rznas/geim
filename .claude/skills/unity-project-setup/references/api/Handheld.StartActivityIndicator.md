<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handheld.StartActivityIndicator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Starts os activity indicator.

Please be warned that this informs os ui system to start. For actual animation to take effect you usually need to wait till the end of this frame. So if you want activity indicator to be animated during synced operation, please use coroutines. Note: You can't move the activity indicator invoked by this method.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;public class Example2 : MonoBehaviour
{
    IEnumerator Load()
    {
        #if UNITY_IPHONE
        Handheld.SetActivityIndicatorStyle(iOS.ActivityIndicatorStyle.Gray);
        #elif UNITY_ANDROID
        Handheld.SetActivityIndicatorStyle(AndroidActivityIndicatorStyle.Small);
        #endif        Handheld.StartActivityIndicator();
        yield return new WaitForSeconds(0);
        SceneManager.LoadScene("My Next Scene");
    }    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 200, 200), "Load!"))
            StartCoroutine(Load());
    }
}
```
