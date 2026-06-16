<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SplashScreen.Draw.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Immediately draws the splash screen. Ensure you have called SplashScreen.Begin before you start calling this.

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
