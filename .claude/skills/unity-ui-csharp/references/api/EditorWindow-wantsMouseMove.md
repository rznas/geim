<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-wantsMouseMove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Checks whether MouseMove events are received in the GUI in this Editor window.

*Editor Window that detects mouse moves when the toggle button is activated and the mouse is over the window.*

```csharp
// Editor Script that shows the mouse movement events captured.
// "Mouse Position" shows where the mouse is outside of the window.

using UnityEditor;
using UnityEngine;
using System.Collections;
using UnityEngine.UIElements;

public class PointerMove : EditorWindow
{
    [MenuItem("Examples/Mouse Move Example")]
    static void InitWindow()
    {
        PointerMove window = (PointerMove)GetWindowWithRect(typeof(PointerMove), new Rect(0, 0, 300, 100));
        window.Show();
    }

    Label m_PointerPosition;

    void CreateGUI()
    {
        rootVisualElement.pickingMode = PickingMode.Position;

        // Create a toggle button that toggles the value of wantsMouseMove
        var toggle = new Toggle
        {
            text = "Receive Movement"
        };
        wantsMouseMove = toggle.value;
        rootVisualElement.Add(toggle);

        m_PointerPosition = new Label();
        rootVisualElement.Add(m_PointerPosition);
        
        toggle.RegisterValueChangedCallback((evt) =>
        {
            if (evt.newValue)
                rootVisualElement.RegisterCallback<PointerMoveEvent>(LogPointerMoved);
            else
                rootVisualElement.UnregisterCallback<PointerMoveEvent>(LogPointerMoved);
        });
    }

    void LogPointerMoved(PointerMoveEvent evt)
    {
        m_PointerPosition.text = $"Pointer Position: {evt.position}";
    }
}
```
