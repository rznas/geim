<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Simulate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| t | Time period in seconds to advance the ParticleSystem simulation by. If `restart` is true, the ParticleSystem will be reset to 0 time, and then advanced by this value. If `restart` is false, the ParticleSystem simulation will be advanced in time from its current state by this value. |
| withChildren | Fast-forward all child Particle Systems as well. |
| restart | Restart and start from the beginning. |
| fixedTimeStep | Only update the system at fixed intervals, based on the value in "Fixed Time" in the Time options. |

### Description

Fast-forwards the Particle System by simulating particles over the given period of time, then pauses it.

Additional resources: Play, Pause functions.
