<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.ShowModal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Show modal editor window.

Other windows will not be accessible and any script recompilation will not happen until this window is closed.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class ShowModalExample : EditorWindow
{
    [MenuItem("Examples/Modal Window")]
    public static void ShowExample()
    {
        ShowModalExample wnd = GetWindow<ShowModalExample>();
        wnd.titleContent = new GUIContent("Must Read Before Continuing");
        wnd.ShowModal();
    }

    public void OnEnable()
    {
        Label recommendationLabel = new Label("We recommend you activate this custom setting before you continue.");
        rootVisualElement.Add(recommendationLabel);
        Label instructionLabel = new Label("To continue using the Editor, you can either activate the setting, or choose to ignore it by closing the window.");
        rootVisualElement.Add(instructionLabel);
        Button customSettingButton = new Button(() =>
        {
            Debug.Log("Custom Setting Activated");
            Close();
        });
        customSettingButton.text = "Activate Custom Setting";
        rootVisualElement.Add(customSettingButton);
    }
}
```
