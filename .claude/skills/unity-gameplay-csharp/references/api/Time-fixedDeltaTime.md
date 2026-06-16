<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-fixedDeltaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The interval in seconds of in-game time at which physics and other fixed frame rate updates (like MonoBehaviour's MonoBehaviour.FixedUpdate) are performed.

The `fixedDeltaTime` interval is always relative to the in-game time which Time.timeScale affects. A `fixedDeltaTime` of 1 second in a game with a Time.timeScale of 0.5 means fixed updates occur every 2 seconds of real time.

 **Note**: To support high-precision simulation and prevent time drift in long-running games, Unity uses a more complex internal representation for time steps. When you set `Time.fixedDeltaTime`, the value is quantized to align with the internal high-resolution grid. When this value is cast back to a float for the `fixedDeltaTime` getter, it can differ by a single bit (one unit of least precision) from the original value due to this internal conversion.

 For more information on how this property relates to the other time properties, refer to Time and Frame Rate Management in the Unity manual.
