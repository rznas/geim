<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectChangeEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Exposes events that allow you to track undoable changes to objects in the editor.

Any undoable change to any object loaded in the editor (both GameObject and assets such as Material object) are recorded and exposed as a stream of events. See ObjectChangeKind for more information as to which types of changes are recorded. Undoing and redoing changes also records events. The stream of events is flushed once per frame. User interactions in the editor may map to multiple events in the event stream.

### Events

| Event | Description |
| --- | --- |
| changesPublished | Event that is raised once per frame if any undoable changes have been recorded. |

### Delegates

| Delegate | Description |
| --- | --- |
| ObjectChangeEventsHandler | The delegate used for the event publishing the object changes. |
