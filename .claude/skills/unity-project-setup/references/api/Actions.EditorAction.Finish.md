<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Actions.EditorAction.Finish.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| result | The state that the EditorAction was finished in. |

### Description

Finishes an EditorAction with a specific result.

Call this method to forcibly end an active EditorAction with a EditorActionResult. A common use is when implementing atomic actions that do not require interactivity.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Actions;

public class SingleFrameActionSample : EditorAction
{
    [MenuItem("Test/Start Single Frame Action")]
    static void StartEditorActionSample()
    {
        Start(new SingleFrameActionSample(4));
    }

    int m_Value;

    public SingleFrameActionSample(int value)
    {
        m_Value = value;
        Finish(EditorActionResult.Success);
    }

    protected override void OnFinish(EditorActionResult result)
    {
        m_Value += 2;
        Debug.Log($"Action Finished [{result}] with value: {m_Value}");
    }
}
```
