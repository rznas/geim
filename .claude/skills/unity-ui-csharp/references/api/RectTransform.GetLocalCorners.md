<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform.GetLocalCorners.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fourCornersArray | The array that corners are filled into. |

### Description

Get the corners of the calculated rectangle in the local space of its Transform.

Each corner provides its local space value. The returned array of 4 vertices is clockwise. It starts bottom left and rotates to top left, then top right, and finally bottom right. Note that bottom left, for example, is an (x, y, z) vector with x being left and y being bottom.

**Note**: If the RectTransform is rotated in Z then the dimensions of the GetLocalCorners will not be changed.

Additional resources: GetWorldCorners.

```csharp
using UnityEngine;// GetLocalCorners():
//   Rotate the local corners and display
//   the corner values.public class ExampleClass : MonoBehaviour
{
    RectTransform rt;    void Start()
    {
        rt = GetComponent<RectTransform>();
        DisplayLocalCorners();
    }    void DisplayLocalCorners()
    {
        Vector3[] v = new Vector3[4];        rt.rotation = Quaternion.AngleAxis(45, Vector3.forward);
        rt.GetLocalCorners(v);        Debug.Log("Local Corners");
        for (var i = 0; i < 4; i++)
        {
            Debug.Log("Local Corner " + i + " : " + v[i]);
        }
    }
}
```

Additional resources: GetWorldCorners.
