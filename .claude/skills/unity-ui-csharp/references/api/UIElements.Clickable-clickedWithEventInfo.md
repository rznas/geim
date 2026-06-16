<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Clickable-clickedWithEventInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback triggered when the target element is clicked, including event data.

See Clickable.clicked for more information on when the `clicked` and `clickedWithEventInfo` events are invoked. The callback methods registered to this event should have an EventBase parameter and return no value. 

Additional resources: Clickable.clicked

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class ButtonDoubleClickedExample : MonoBehaviour
{
    public UIDocument uiDocument;    void Start()
    {
        var button = new Button { text = "Press Me" };        button.style.width = 160;
        button.style.height = 40;        button.clickable.clickedWithEventInfo += (EventBase evt) =>
        {
            int clickCount = ((IPointerEvent)evt).clickCount;
            if (clickCount == 1)
                Debug.Log("Button was single-clicked.");
            else if (clickCount == 2)
                Debug.Log("Button was double-clicked.");
        };        uiDocument.rootVisualElement.Add(button);
    }
}
```
