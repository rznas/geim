<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.Dispatcher.CallDelayed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | Callback to be executed later in the main thread. |
| seconds | Number of seconds to wait until the main thread executes the user callback. |

### Returns

**Action** Returns an off handler that can be used to unregister the callback before it gets executed in the main thread later.

### Description

Register a callback to be executed later in the main thread.
