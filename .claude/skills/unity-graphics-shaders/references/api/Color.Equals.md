<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color.Equals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Color that is used for the equality check. |

### Returns

**bool** True if the given color is exactly equal to this color.

### Description

Returns true if the given color is exactly equal to this color, i.e. if the red, green, blue, and alpha values are exactly the same.

Due to floating point inaccuracies, this might return false for colors which are essentially (but not exactly) equal. Use the == operator to test two Colors for approximate equality.

```csharp
using UnityEngine;public class ColorEqualsExample : MonoBehaviour
{
    Color a = new Color(1f, 0f, 0f, 1f);
    private Color b = Color.red;
    private Color c = new Color(0f, 1f, 0f, 1f);    void Start()
    {
        Debug.Assert(a.Equals(b));
        Debug.Assert(!a.Equals(c));
    }
}
```
