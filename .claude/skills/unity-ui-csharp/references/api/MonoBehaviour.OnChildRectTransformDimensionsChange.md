<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnChildRectTransformDimensionsChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when a child RectTransform's dimensions change.

Sent to the parent RectTransform when the dimensions of an immediate child RectTransform change. Use it in UI hierarchies where layouts need to respond dynamically to size changes.

**Important:** This message is only sent if the parent RectTransform.sendChildDimensionsChange property is set to `true`. If this property is `false`, the parent will not receive the callback even when a child changes size.

```csharp
using UnityEngine;

[RequireComponent(typeof(RectTransform))]
public class OnChildRectTransformDimensionsChangeExample : MonoBehaviour
{
    RectTransform rt;

    void OnEnable()
    {
        if (rt == null)
            rt = GetComponent<RectTransform>();

        rt.sendChildDimensionsChange = true;
    }

    void OnDisable()
    {
        rt.sendChildDimensionsChange = false;
    }

    void OnChildRectTransformDimensionsChange()
    {
        Debug.Log("A child RectTransform has changed dimensions.");
    }
}
```
