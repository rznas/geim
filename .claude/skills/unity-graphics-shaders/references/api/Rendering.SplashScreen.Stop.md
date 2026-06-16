<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SplashScreen.Stop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stop the SplashScreen rendering.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Rendering;// This example shows how the SplashScreen can be canceled early via the user pressing any key.
public class Example : MonoBehaviour
{
    public SplashScreen.StopBehavior stopBehavior;    void Start()
    {
        StartCoroutine(SplashScreenController());
    }    IEnumerator SplashScreenController()
    {
        SplashScreen.Begin();
        while (!SplashScreen.isFinished)
        {
            // Fade to the background if the user presses any key during the splash screen rendering.
            if (Input.anyKeyDown)
            {
                SplashScreen.Stop(stopBehavior);
                break;
            }
            yield return null;
        }
    }
}
```
