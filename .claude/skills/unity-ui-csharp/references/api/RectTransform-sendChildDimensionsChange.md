<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform-sendChildDimensionsChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the RectTransform notifies components when a child RectTransform changes dimensions.

If true, this RectTransform calls MonoBehaviour.OnChildRectTransformDimensionsChange on all components attached to the same GameObject when any of its child RectTransforms change dimensions.

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
