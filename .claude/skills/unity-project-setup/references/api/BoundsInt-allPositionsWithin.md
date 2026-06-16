<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoundsInt-allPositionsWithin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A BoundsInt.PositionCollection that contains all positions within the BoundsInt.

Positions within the BoundsInt are not inclusive of the positions on the upper limits of the BoundsInt. This iterator will only return positions of size greater than zero for each axis.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Create a BoundsInt of a cube with a
    // bottom-left coordinate of (0, 0, 0),
    // and a height, width and depth of 4,
    // and log its contained points to the console.
    void Start()
    {
        // bounds is a cube where every edge has exactly four points.
        // It has 4 * 4 * 4 = 64 points.
        // min = (0,0,0), max = (3,3,3).
        var bounds = new BoundsInt(new Vector3Int(0, 0, 0), new Vector3Int(4, 4, 4));        // Iterate through each point, and log it to the Debug Console.
        foreach (var point in bounds.allPositionsWithin)
        {
            Debug.Log(point.ToString());
        }        // The 64 unique integer 3-dimensional points that fall within this Bounds will be logged to the Debug Console.
    }
}
```
