<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.Dispatcher.ProcessOne.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if an enqueued action was processed.

### Description

This function can called in the main thread to force the execution of one enqueued action.

This can be used to prevent the main thread from waiting for an action to be executed later. We usually use this function internally when we process a synchronous search request using SearchService.Request with SearchFlags.Synchronous.
