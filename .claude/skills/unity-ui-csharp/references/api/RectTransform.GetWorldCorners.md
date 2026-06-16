<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform.GetWorldCorners.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fourCornersArray | The array that corners are filled into. |

### Description

Get the corners of the calculated rectangle in world space.

Each corner provides its world space value. The returned array of 4 vertices is clockwise. It starts bottom left and rotates to top left, then top right, and finally bottom right. Note that bottom left, for example, is an (x, y, z) vector with x being left and y being bottom.

**Note**: If the RectTransform is rotated in Z then the dimensions of the GetWorldCorners will be changed.

```csharp
using UnityEngine;// GetWorldCorners():
//  Access the RectTransform and read the vertices
//  that define the location and size of the
//  object.public class ExampleClass : MonoBehaviour
{
    RectTransform rt;    void Start()
    {
        rt = GetComponent<RectTransform>();
        DisplayWorldCorners();
    }    void DisplayWorldCorners()
    {
        Vector3[] v = new Vector3[4];
        rt.GetWorldCorners(v);        Debug.Log("World Corners");
        for (var i = 0; i < 4; i++)
        {
            Debug.Log("World Corner " + i + " : " + v[i]);
        }
    }
}
```

Additional resources: GetLocalCorners.
