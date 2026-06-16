<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsMath.SpringDamper.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| frequency | The frequency of the spring, in cycles per second. |
| damping | The damping of the spring. Must be >= zero. |
| translation | The current translation of the spring. |
| speed | The current speed of the spring. |
| deltaTime | The time over which to simulate the spring. |

### Returns

**float** The new calculated spring speed.

### Description

Calculate a one-dimensional mass-spring-damper simulation which drives towards a zero translation. You can then compute the new position using: "translation += newSpeed * deltaTime;"
