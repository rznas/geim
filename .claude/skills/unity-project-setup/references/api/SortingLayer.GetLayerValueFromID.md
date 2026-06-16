<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SortingLayer.GetLayerValueFromID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The unique value of the sorting layer as returned by any renderer's sortingLayerID property. |

### Returns

**int** The final sorting value of the layer relative to other layers.

### Description

Returns the final sorting layer value. To determine the sorting order between the various sorting layers, use this method to retrieve the final sorting value and use CompareTo to determine the order.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    int CompareLayer(GameObject rhs, GameObject lhs)
    {
        int rval = SortingLayer.GetLayerValueFromID(rhs.GetComponent<SpriteRenderer>().sortingLayerID);
        int lval = SortingLayer.GetLayerValueFromID(lhs.GetComponent<SpriteRenderer>().sortingLayerID);
        return rval.CompareTo(lval);
    }
}
```

Additional resources: GetLayerValueFromName.
