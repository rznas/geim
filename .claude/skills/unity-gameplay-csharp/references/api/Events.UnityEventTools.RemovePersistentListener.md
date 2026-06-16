<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityEventTools.RemovePersistentListener.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| unityEvent | Event to modify. |
| index | Index to remove (if specified). |
| call | Function to remove (if specified). |

### Description

Removes the given function from the event.

You can specify either the index of the listener function to remove, or the delegate type of the listener function to remove. If you specify the delegate type, this method removes all occurrences of that listener function from the event. If you specify the the index, this method only removes the listener function at the index specified.
