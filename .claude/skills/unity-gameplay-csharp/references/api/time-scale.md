<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/time-scale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# In-game time and real time

The Time.timeScale property defines the rate at which time passes in your game world relative to real time. A `Time.timeScale` value of 1.0 means your in-game time matches real time. A value of 2.0 makes time pass twice as quickly in your game as in the real world, which speeds up the action in your game. A value of 0.5 slows gameplay down to half speed. A value of zero makes your in-game time stop completely.

`Time.timeScale` doesn’t actually slow execution but instead changes the time step reported to the `Update` and `FixedUpdate` functions with Time.deltaTime and Time.fixedDeltaTime.

Your `Update` function may be called just as often when you reduce the time scale, but the value of `Time.deltaTime` each frame will be less. Other script functions aren’t affected by the time scale, so you can for example display a GUI with normal interaction when the game is paused.

For special time effects such as slow-motion, it’s sometimes useful to slow the passage of game time so that animations and time-based calculations in your code happen at a slower pace. Furthermore, you may sometimes want to freeze game time completely, as when the game is paused.

The Time window has a property to let you set the time scale globally but it’s usually more useful to set the value from a script using the Time-timeScale property:

```csharp
//C# script example
using UnityEngine;
using System.Collections;

public class ExampleScript : MonoBehaviour {
    void Pause() {
        Time.timeScale = 0;
    }
    
    void Resume() {
        Time.timeScale = 1;
    }
}
```

## Additional resources

- Per-frame updates
- Capture frame rate
