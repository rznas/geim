<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SplashScreen.Begin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Initializes the splash screen so it is ready to begin drawing. Call this before you start calling SplashScreen.Draw. Internally this function resets the timer and prepares the logos for drawing.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Rendering;// This example shows how you could draw the splash screen at the start of a Scene. This is a good way to integrate the splash screen with your own or add extras such as Audio.
public class SplashScreenExample : MonoBehaviour
{
    IEnumerator Start()
    {
        Debug.Log("Showing splash screen");
        SplashScreen.Begin();
        while (!SplashScreen.isFinished)
        {
            SplashScreen.Draw();
            yield return null;
        }
        Debug.Log("Finished showing splash screen");
    }
}
```
