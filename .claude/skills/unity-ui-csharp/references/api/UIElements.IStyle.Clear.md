<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IStyle.Clear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clearSourceAssetStyles | Indicates if the inline style properties coming from the source asset must also be cleared for the element. |

### Description

Clears inline style properties of the element.

After clearing, the style properties of the element revert to the values defined in stylesheets or default values.

 By default, this method clears all inline style properties, including those coming from the source asset from which the element was created. To preserve these properties, set the to false. 

The following example compares this method and resetting style properties individually.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;public class VisualElementClearInlineStylesWindow : EditorWindow
{
    [MenuItem("Window/UI Toolkit/Clear Inline Styles Example")]
    public static void ShowWindow()
    {
        var window = GetWindow<VisualElementClearInlineStylesWindow>();
        window.titleContent = new GUIContent("Clear Inline Styles Example");
    }    private void SetStyles(VisualElement element)
    {
        element.style.fontSize = 24;
        element.style.color = Color.red;
    }    public void CreateGUI()
    {
        var container = new VisualElement();
        container.style.paddingLeft = 10;
        container.style.paddingRight = 10;
        container.style.paddingTop = 10;
        container.style.paddingBottom = 10;
        rootVisualElement.Add(container);        // Create an element with multiple inline styles
        var styledElement = new Label() { text = "Example" };
        SetStyles(styledElement);        // Button to clear one property at a time
        container.Add(new Button(() =>
        {
            styledElement.style.fontSize = StyleKeyword.Null;
        })
        {
            text = "Clear Font Size Only"
        });        container.Add(new Button(() =>
        {
            styledElement.style.color = StyleKeyword.Null;
        })
        {
            text = "Clear Color Only"
        });        // Button to clear all properties at once
        container.Add(new Button(() =>
        {
            if (styledElement.style.fontSize == StyleKeyword.Null && styledElement.style.color == StyleKeyword.Null )
                Debug.Log("All styles already unset!");            styledElement.style.Clear();
        })
        {
            text = "Clear All Styles"
        });        // Button to reset the styles
        container.Add(new Button(() =>
        {
            SetStyles(styledElement);
        })
        {
            text = "Set Styles"
        });        container.Add(styledElement);
    }}
```
