<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-timeAsDouble.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The double precision time at the beginning of this frame (Read Only). This is the time in seconds since the start of the game.

`Time.timeAsDouble` is the amount of time in seconds that the application has been running for. It is read-only.

This is the double precision version of Time.time. It offers more precision than a float or single value, particularly over extended periods of real-world time. In most cases, prefer Time.timeAsDouble over Time.time for greater precision.

The application receives the current `Time.timeAsDouble` at the beginning of each frame, with the value increasing per frame. A `timeAsDouble` call per frame receives the same value. When called from `FixedUpdate` it returns the Time.fixedTimeAsDouble property.

You can use `Time.timeAsDouble` for timestamping and measuring elapsed durations relative to the start of the application. For duration of the current frame and related per-frame accumulation or simulation steps, use Time.deltaTime instead.

The value of `Time.timeAsDouble` is undefined during `Awake` messages and starts after all messages are finished. `Time.timeAsDouble` does not update if the Editor is paused. For a time value unaffected by pausing, refer to Time.realtimeSinceStartupAsDouble.

```csharp
//If the Fire1 button is pressed, a projectile
//will be Instantiated every 0.5 seconds.using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    public GameObject projectile;
    public float fireRate = 0.5f;
    private double nextFire = 0.0f;    void Update()
    {
        if (Input.GetButton("Fire1") && Time.timeAsDouble > nextFire)
        {
            nextFire = Time.timeAsDouble + fireRate;
            Instantiate(projectile, transform.position, transform.rotation);
        }
    }
}
```
