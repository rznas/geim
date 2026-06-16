<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.SetAsLastSibling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Move the transform to the end of the local transform list.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.UI; //Required when using UI Elements.
using UnityEngine.EventSystems; // Required when using event data.public class ExampleClass : MonoBehaviour, IPointerDownHandler
{
    public RectTransform panelRectTransform;    //Invoked when the mouse pointer goes down on a UI element.
    public void OnPointerDown(PointerEventData data)
    {
        // Puts the panel to the front as it is now the last UI element to be drawn.
        panelRectTransform.SetAsLastSibling();
    }
}
```
