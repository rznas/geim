<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.Focus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Moves keyboard focus to another EditorWindow.

The Focus public method controls which window is active for use of the keyboard. In the examples below the active EditorWindow keyboard is changed to a different EditorWindow keyboard. Additional resources: focusedWindow.



 *Focus one window by pressing the button on other window.*

```csharp
// A window that changes state to the second window when
// the button is pressed.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class FocusExample1 : EditorWindow
{
    public static FocusExample1 Instance = null;

    [MenuItem("Examples/Focus Example 1")]
    static void Init()
    {
        Instance = GetWindow<FocusExample1>("Focus1");
    }

    void CreateGUI()
    {
        var button = new Button(() => {
            if (FocusExample2.Instance)
                FocusExample2.Instance.Focus();
        });
        button.text = "Focus Window2";
        rootVisualElement.Add(button);    
    }
}
```

```csharp
// Second window.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class FocusExample2 : EditorWindow
{
    public static FocusExample2 Instance = null;

    [MenuItem("Examples/Focus Example 2")]
    static void Init()
    {
        Instance = GetWindow<FocusExample2>("Focus2");
    }
    void CreateGUI()
    {
        var button = new Button(() => {
            if (FocusExample1.Instance)
                FocusExample1.Instance.Focus();
        });
        button.text = "Focus Window1";
        rootVisualElement.Add(button);
    }
}
```
