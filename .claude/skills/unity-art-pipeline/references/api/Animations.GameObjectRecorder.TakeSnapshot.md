<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GameObjectRecorder.TakeSnapshot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dt | Delta time. |

### Description

Forwards the animation by **dt** seconds, then record the values of the added bindings.

To add bindings, use the bindings methods: BindComponent, BindComponentsOfType, BindAll, or Bind.

Note that **dt** is not added the first time this function is called so that the clip will start at 0.0f. This means the forwarding only starts on the subsequent calls.
