<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadbackRequest-forcePlayerLoopUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

In the Editor, defines whether the Player loop is updated while the GPU request is in flight.

Defaults value: true. If true, forces the Player loop to be updated until the GPU request is fulfilled. This guarantees that the request is completed as fast as possible, but if a new AsyncGPUReadback.Request is issued every frame, the Editor will never go into the idle state. If false, the Player loop is not forced to update, so the Editor is able to enter the idle state immediately after this request. The request might not finish until the Editor wakes up again, for example, when the Scene view camera is moved or an inspector property changes.
