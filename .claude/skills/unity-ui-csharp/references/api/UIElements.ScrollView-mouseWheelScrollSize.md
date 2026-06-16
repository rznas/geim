<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ScrollView-mouseWheelScrollSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property controls the scrolling speed only when using a mouse scroll wheel, based on the size of the page.

This property takes precedence over the `--unity-metrics-single_line-height` USS variable. If both the property and the variable are set, the property value is used. 

The following example demonstrates how to use the `mouseWheelScrollSize` property to control the "speed" of a scroll when using the mouse wheel. Notice the difference in feel when selecting different values:

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class ScrollView_MouseWheelScrollSize : MonoBehaviour
{
    // To use this example in runtime, add a UIDocument component to your Scene and attach a UXML file to the UIDocument component.
    // The UXML file can be empty.
    public UIDocument uiDocument;
    public int numberOfPotions = 100;    void Start()
    {
        // Create a dropdown to change the mouse wheel scroll size.
        var mouseWheelScrollSizeDropdown = new DropdownField("Select a Mouse Wheel Scroll Size");        var scrollView = new ScrollView { name = "MyPotionsInventory" };
        scrollView.style.height = 200;        var initialMouseWheelScrollSize = scrollView.mouseWheelScrollSize;        // Set the choices of the dropdown to different values of the mouse wheel scroll size.
        mouseWheelScrollSizeDropdown.choices = new List<string>() { $"{initialMouseWheelScrollSize * 0.5f}", $"{initialMouseWheelScrollSize}",
            $"{initialMouseWheelScrollSize * 2}", $"{initialMouseWheelScrollSize * 10}", $"{initialMouseWheelScrollSize * 20}" };
        mouseWheelScrollSizeDropdown.value = $"{initialMouseWheelScrollSize}";        // Register a ValueChangedCallback to change the mouse wheel scroll size.
        mouseWheelScrollSizeDropdown.RegisterValueChangedCallback(evt =>
        {
            // We know the choices are all floats, so we can parse them directly.
            var newValue = float.Parse(evt.newValue);
            scrollView.mouseWheelScrollSize = newValue;        });        var inventoryColor = new Color(0.65f, 0.3f, 0.2f, 1f);        // Create a list of labels representing potions.
        for (int i = 0; i < numberOfPotions; i++)
        {
            var label = new Label { text = " Unnamed Potion #" + (i) };
            label.style.backgroundColor = inventoryColor;
            scrollView.Add(label);
        }        // Add a title for the list and make it noticeable.
        var title = new Label { text = "Potions Inventory" };
        title.style.unityFontStyleAndWeight = FontStyle.Bold;
        title.style.fontSize = 20;
        title.style.color = inventoryColor;
        title.style.unityTextAlign = TextAnchor.MiddleCenter;        uiDocument.rootVisualElement.Add(mouseWheelScrollSizeDropdown);
        uiDocument.rootVisualElement.Add(title);
        uiDocument.rootVisualElement.Add(scrollView);
    }
}
```
