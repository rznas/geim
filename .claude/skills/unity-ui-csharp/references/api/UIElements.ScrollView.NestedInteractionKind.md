<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ScrollView.NestedInteractionKind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for controlling how nested ScrollView handles scrolling when reaching the limits of the scrollable area.

This Enum is only relevant when used for a ScrollView that is nested inside another ScrollView. 

The following example demonstrates how to use the NestedInteractionKind enum to control the behavior of a nested ScrollView.

```csharp
using System;
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class ScrollView_NestedInteraction_Example : MonoBehaviour
{
    // To use this example in runtime, add a UIDocument component to your Scene and attach a UXML file to the UIDocument component.
    // The UXML file can be empty.
    public UIDocument uiDocument;
    public int numberOfPotions = 10;    Label[] labels;
    string[] otherItems = { "Shield", "Sword", "Helmet", "Boots", "Gloves" };    void Start()
    {
        // Inner ScrollView for the list of potions.
        var potionInventoryScrollView = new ScrollView { name = "MyPotionsInventory" };
        potionInventoryScrollView.style.height = 200;
        var potionsInventoryColor = new Color(0.65f, 0.3f, 0.2f, 1f);        // Outer ScrollView for the entire inventory, which includes the inner ScrollView.
        var fullInventoryScrollView = new ScrollView { name = "MyFullInventory" };
        fullInventoryScrollView.style.height = 250;
        var fullInventoryColor = new Color(0.2f, 0.3f, 0.65f, 1f);        // Create a toggle to use NestedInteractionKind.StopScrolling instead of NestedInteractionKind.ForwardScrolling,
        // which is the default behavior for scroll wheel input.
        var toggle = new Toggle("Potions ScrollView: Use NestedInteractionKind.StopScrolling instead of NestedInteractionKind.ForwardScrolling");
        toggle.RegisterValueChangedCallback( (evt =>
                potionInventoryScrollView.nestedInteractionKind = evt.newValue ? ScrollView.NestedInteractionKind.StopScrolling : ScrollView.NestedInteractionKind.ForwardScrolling
                ));        // Create a list of labels representing potions.
        labels = new Label[numberOfPotions];
        for (int i = 0; i < numberOfPotions; i++)
        {
            var label = new Label { text = " Unnamed Potion #" + (i) };
            label.style.backgroundColor = potionsInventoryColor;
            potionInventoryScrollView.Add(label);
        }        var potionsInventoryTitle = new Label { text = "Potions Inventory" };
        potionsInventoryTitle.style.unityFontStyleAndWeight = FontStyle.Bold;
        potionsInventoryTitle.style.fontSize = 20;
        potionsInventoryTitle.style.color = potionsInventoryColor;
        potionsInventoryTitle.style.unityTextAlign = TextAnchor.MiddleCenter;        var fullInventoryTitle = new Label { text = "Full Inventory" };
        fullInventoryTitle.style.unityFontStyleAndWeight = FontStyle.Bold;
        fullInventoryTitle.style.fontSize = 25;
        fullInventoryTitle.style.color = fullInventoryColor;
        fullInventoryTitle.style.unityTextAlign = TextAnchor.MiddleCenter;        fullInventoryScrollView.Add(potionsInventoryTitle);
        fullInventoryScrollView.Add(potionInventoryScrollView);        // Create a list of labels representing other items.
        foreach (var item in otherItems)
        {
            var label = new Label { text = item };
            label.style.backgroundColor = fullInventoryColor;
            fullInventoryScrollView.Add(label);
        }        uiDocument.rootVisualElement.Add(toggle);
        uiDocument.rootVisualElement.Add(fullInventoryTitle);
        uiDocument.rootVisualElement.Add(fullInventoryScrollView);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Default | Automatically selects the behavior according to the context in which the UI runs. For touch input, typically mobile devices, NestedInteractionKind.StopScrolling is used. For scroll wheel input, NestedInteractionKind.ForwardScrolling is used. |
| StopScrolling | Scrolling capture will remain in the scroll view if it initiated the drag. |
| ForwardScrolling | Scrolling will continue to the parent when no movement is possible in the scrolled direction. |
