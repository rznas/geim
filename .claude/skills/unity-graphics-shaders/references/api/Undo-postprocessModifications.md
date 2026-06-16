<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo-postprocessModifications.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback that is triggered whenever a new set of property modifications is created.

Additional resources: PostprocessModifications.

```csharp
using UnityEditor;
using UnityEngine;public class ExamplePostprocessModificationScript : MonoBehaviour
{
    void Start()
    {
        Undo.postprocessModifications += MyPostprocessModificationsCallback;
    }    void OnDestroy()
    {
        Undo.postprocessModifications -= MyPostprocessModificationsCallback;
    }    UndoPropertyModification[] MyPostprocessModificationsCallback(UndoPropertyModification[] modifications)
    {
        // here, you can perform processing of the recorded modifications before returning them
        return modifications;
    }
}
```
