<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.CancelQuit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cancels quitting the application. This is used for showing a splash screen at the end of a game.

This function only works in the Player.

**Note:** CancelQuit is deprecated. Use Application.wantsToQuit instead.

**Note:** This function has no effect on iPhone. Application cannot prevent termination under iPhone OS.

```csharp
using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    // Delays quitting for 2 seconds and
    // loads the finalsplash level during that time.    float showSplashTimeout = 2.0f;
    bool  allowQuitting = false;    void Awake()
    {
        // This game object needs to survive multiple levels
        Application.DontDestroyOnLoad(this.gameObject);
    }    void OnApplicationQuit()
    {
        // If we haven't already load up the final splash screen level
        if (Application.loadedLevelName.ToLower() != "finalsplash")
        {
            StartCoroutine("DelayedQuit");
        }        // Don't allow the user to exit until we got permission in
        if (!allowQuitting)
        {
            Application.CancelQuit();
        }
    }    IEnumerator DelayedQuit()
    {
        Application.LoadLevel("finalsplash");        // Wait for showSplashTimeout
        yield return new WaitForSeconds(showSplashTimeout);        // then quit for real
        allowQuitting = true;
        Application.Quit();
    }
}
```
