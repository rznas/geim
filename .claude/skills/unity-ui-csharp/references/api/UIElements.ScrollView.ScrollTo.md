<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ScrollView.ScrollTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| child | The child to scroll to. |

### Description

Scroll to a specific child element.

This example creates a ScrollView that contains multiple labels. A Button is used to scroll to a selected label.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class ScrollViewScrollToExample : MonoBehaviour
{
    // To use this example in runtime, add a UIDocument component to your Scene and attach a UXML file to the UIDocument component.
    // The UXML file can be empty.
    public UIDocument uiDocument;
    public int numberOfPotions = 100;
    public int scrollToButton = 50;    Label[] labels;    void OnEnable()
    {
        var scrollView = new ScrollView { name = "MyPotionsInventory" };
        var inventoryColor = new Color(0.65f, 0.3f, 0.2f, 1f);        // Create a list of labels representing potions, with a special label for the potion we want to scroll to.
        labels = new Label[numberOfPotions];
        for (int i = 0; i < numberOfPotions; i++)
        {
            var label = new Label { text = " Unnamed Potion #" + (i) };
            label.style.backgroundColor = inventoryColor;            if (scrollToButton == i)
            {
                label.text = "Very Important Potion";
                label.style.color = Color.yellow;
            }            labels[i] = label;
            scrollView.Add(label);
        }        // Add a title for the list and make it noticeable.
        var title = new Label { text = "Potions Inventory" };
        title.style.unityFontStyleAndWeight = FontStyle.Bold;
        title.style.fontSize = 20;
        title.style.color = inventoryColor;
        title.style.unityTextAlign = TextAnchor.MiddleCenter;        var button = new Button { text = "Click to locate the Very Important Potion in the inventory" };
        button.clicked += DoScrollTo;        uiDocument.rootVisualElement.Add(title);
        uiDocument.rootVisualElement.Add(button);
        uiDocument.rootVisualElement.Add(scrollView);
    }    void DoScrollTo()
    {
        var scrollView = uiDocument.rootVisualElement.Q<ScrollView>("MyPotionsInventory");
        scrollView.ScrollTo(labels[scrollToButton]);
    }
}
```
