<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo-undoRedoEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback that is triggered after any undo or redo event.

```csharp
using UnityEditor;
using UnityEngine;public class ExampleUndoRedoEventScript : MonoBehaviour
{
    void Start()
    {
        Undo.undoRedoEvent += OnUndoRedoEvent;
    }    void OnDestroy()
    {
        Undo.undoRedoEvent -= OnUndoRedoEvent;
    }    void OnUndoRedoEvent(in UndoRedoInfo info)
    {
        // code for the action to take on Undo or Redo event
    }
}
```
