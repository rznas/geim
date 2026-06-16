<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RealtimeGICPUUsage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How much CPU usage to assign to the final lighting calculations at runtime.

How many CPU worker threads to create for Enlighten Realtime Global Illumination lighting calculations in the Player. Increasing this makes the system react faster to changes in lighting at a cost of using more CPU time. The higher the CPU Usage value, the more worker threads are created for solving Enlighten Realtime Global Illumination.
 
 **Please note** that some platforms will allow all CPUs to be occupied by worker threads whilst some have a max limit:
 **Android:** If the device is a bigLittle architecture, only the little CPUs will be used, otherwise it is CPUs - 1.

### Properties

| Property | Description |
| --- | --- |
| Low | 25% of the allowed CPU threads are used as worker threads. |
| Medium | 50% of the allowed CPU threads are used as worker threads. |
| High | 75% of the allowed CPU threads are used as worker threads. |
| Unlimited | 100% of the allowed CPU threads are used as worker threads. |
