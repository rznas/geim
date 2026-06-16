<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo-undoRedoPerformed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback that is triggered after an undo or a redo was executed.

For more information on whether the callback was called from an undo or a redo, use undoRedoEvent instead.

```csharp
using UnityEditor;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Undo.undoRedoPerformed += MyUndoRedoCallback;
    }    void MyUndoRedoCallback()
    {
        // code for the action to take on Undo/Redo
    }
}
```
