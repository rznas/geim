<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityEventBase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Abstract base class for UnityEvents.

This class provides the base functionality for the UnityEvents.

### Public Methods

| Method | Description |
| --- | --- |
| GetPersistentEventCount | Get the number of registered persistent listeners. |
| GetPersistentListenerState | Returns the execution state of a persistent listener. |
| GetPersistentMethodName | Get the target method name of the listener at index index. |
| GetPersistentTarget | Get the target component of the listener at index index. |
| RemoveAllListeners | Remove all non-persistent (ie created from script) listeners from the event. |
| SetPersistentListenerState | Modify the execution state of a persistent listener. |

### Static Methods

| Method | Description |
| --- | --- |
| GetValidMethodInfo | Given an object, function name, and a list of argument types; find the method that matches. |
