<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-TimeManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Time

Use **Time** settings to set properties that control timing within your game. To access **Time** settings, go to **Edit > Project Settings > Time**.

## Properties

| **Property** | **Description** |
| --- | --- |
| **Fixed Timestep** | A frame rate independent interval that dictates when physics calculations and `FixedUpdate`events are performed. |
| **Maximum Allowed Timestep** | A frame rate independent interval that caps the worst case scenario when frame rate is low. Physics calculations and `FixedUpdate` events will not be performed for longer time than specified. |
| **Time Scale** | The speed at which time progresses. Change this value to simulate slow motion effects. A value of 1 means real-time. A value of 0.5 means half speed; a value of 2 is double speed. |
| **Maximum**Particle__ Timestep__ | A frame rate independent interval that controls the accuracy of the particle simulation. When the frame time exceeds this value, multiple iterations of the particle update are performed in one frame, so that the duration of each step does not exceed this value. For example, a game running at 30fps (0.03 seconds per frame) could run the particle update at 60fps (in steps of 0.0167 seconds) to achieve a more accurate simulation, at the expense of performance. |

## Details

The **Time Manager** lets you set properties globally, but it is often useful to set them from a script during gameplay (for example, setting **Time Scale** to zero is a useful way to pause the game). Refer to the page on Time and frame rate management for full details of how time can be managed in Unity.

## Additional resources

- Fixed updates
- Optimize physics performance
