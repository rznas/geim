<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-timeScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rate at which in-game time passes relative to real time.

This can be used for slow motion effects or to speed up your application. When `timeScale` is 1.0, time passes at the same rate as real time. When `timeScale` is 0.5 time passes at half the rate of real time.

When `timeScale` is set to zero your application acts as if paused if all your functions are frame rate independent. Negative values are ignored.

Changing the `timeScale` only takes effect on the following frames.

`FixedUpdate` functions and suspended Coroutines with WaitForSeconds are not called when `timeScale` is set to zero.

If you change Time.timeScale but not Time.fixedDeltaTime, the physics simulation rate remains constant relative to in-game time but not real time. To keep the physics simulation constant relative to real time instead, you can multiply Time.fixedDeltaTime by the new `timeScale`. Usually the desired behavior is for the physics simulation to remain consistent relative to in-game time, but some gameplay, audio syncing, or effects logic might rely on a steady real-time fixed update rate.

The following example toggles the time scale between 1 and 0.7 whenever the user hits the Fire1 button, and adjusts fixed delta time according to the new time scale so that the physics simulation remains consistent relative to real time instead of in-game time.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Toggles the time scale between 1 and 0.7
    // whenever the user hits the Fire1 button.    private float fixedDeltaTime;    void Awake()
    {
        // Make a copy of the fixedDeltaTime, it defaults to 0.02f, but it can be changed in the editor
        this.fixedDeltaTime = Time.fixedDeltaTime;
    }    void Update()
    {
        if (Input.GetButtonDown("Fire1"))
        {
            if (Time.timeScale == 1.0f)
                Time.timeScale = 0.7f;
            else
                Time.timeScale = 1.0f;
            // Adjust fixed delta time according to timescale
            // The fixed delta time will now be 0.02 real-time seconds per frame
            Time.fixedDeltaTime = this.fixedDeltaTime * Time.timeScale;
        }
    }
}
```
