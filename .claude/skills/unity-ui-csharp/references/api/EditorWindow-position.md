<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The desired position of the window in screen space.

Setting this value will undock the window if it is docked.


 *Create an undocked editor window with position.*

```csharp
// The position of the window is displayed when it is
// external from Unity.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class PositionExample : EditorWindow
{
    Vector2Int p1;
    bool showButton = true;

    [MenuItem("Examples/Window Position")]
    static void Init()
    {
        GetWindow<PositionExample>("position");
    }

    void CreateGUI()
    {
        Rect r = position;
        var label = new Label("Position: " + r.x + "x" + r.y);
        rootVisualElement.Add(label);
        
        var field = new Vector2IntField("Set the position:");
        rootVisualElement.Add(field);
        if (showButton)
        {
            var button = new Button(() => {
                r.x = field.value.x;
                r.y = field.value.y;

                position = r;
            });
            button.text = "Accept new position";
            rootVisualElement.Add(button);
        }
    }
}
```
