<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.Dispatcher.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The search dispatcher is used to synchronize events from the search provider threads and the main UI threads.

### Static Methods

| Method | Description |
| --- | --- |
| CallDelayed | Register a callback to be executed later in the main thread. |
| Enqueue | This function can be used in a thread to enqueue an action that will be executed later in the main thread. |
| ProcessOne | This function can called in the main thread to force the execution of one enqueued action. |
