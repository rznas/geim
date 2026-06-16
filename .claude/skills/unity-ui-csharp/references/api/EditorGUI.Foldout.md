<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.Foldout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the arrow and label. |
| foldout | The shown foldout state. |
| content | The label to show. |
| style | Optional GUIStyle. |
| toggleOnLabelClick | Should the label be a clickable part of the control? |

### Returns

**bool** The foldout state selected by the user. If true, you should render sub-objects.

### Description

Makes a label with a foldout arrow to the left of it.

This is useful for creating tree or folder like structures where child objects are only shown if the parent is folded out.


 *Foldout in an Editor Window.*

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;// Create a foldable menu that hides/shows the selected transform position.
// if no Transform is selected, the Foldout item will be folded until a transform is selected.
public class EditorGUIFoldout : EditorWindow
{
    public bool showPosition = true;
    public string status = "Select a GameObject";
    [MenuItem("Examples/Foldout Usage")]
    static void Init()
    {
        UnityEditor.EditorWindow window = GetWindow(typeof(EditorGUIFoldout));
        window.position = new Rect(0, 0, 150, 60);
        window.Show();
    }    void OnGUI()
    {
        showPosition = EditorGUI.Foldout(new Rect(3, 3, position.width - 6, 15), showPosition, status);
        if (showPosition)
            if (Selection.activeTransform)
            {
                Selection.activeTransform.position = EditorGUI.Vector3Field(new Rect(3, 25, position.width - 6, 40), "Position", Selection.activeTransform.position);
                status = Selection.activeTransform.name;
            }        if (!Selection.activeTransform)
        {
            status = "Select a GameObject";
            showPosition = false;
        }
    }    void OnInspectorUpdate()
    {
        Repaint();
    }
}
```
