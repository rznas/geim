<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement.Add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| child | The child element to add to the content container. |

### Description

Adds an element to the contentContainer of this element.

Adds the child element to the hierarchy if this element is the content container; otherwise, adds the child element to the content container of this element. 
 Exits without performing any action if the child element is `null`. 
 Throws an InvalidOperationException if the contentContainer is `null`. 

The following example shows how to add a Button to a visual element.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[UxmlElement]
public partial class MyElement : VisualElement
{
    public MyElement()
    {
        var button = new Button { name = "my-button", text = "Click me!" };
        button.clicked += ButtonClicked;        // Add the button to the visual element
        Add(button);
    }    void ButtonClicked()
    {
        Debug.Log("Button clicked!");
    }
}
```
