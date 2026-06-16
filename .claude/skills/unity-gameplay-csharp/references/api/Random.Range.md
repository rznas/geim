<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random.Range.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random `float` within `[minInclusive..maxInclusive]` (range is inclusive).

If `minInclusive` is greater than `maxInclusive`, then the numbers are automatically swapped.

**Important**: Both the lower and upper bounds are **inclusive**. Any given float value between them, *including both minInclusive and maxInclusive*, will appear on average approximately once every ten million random samples.

There is an `int` overload of this function that operates slightly differently, especially regarding the range maximum. See its docs below.

See Random for details on the algorithm, and for examples of how `UnityEngine.Random` may be different from other random number generators.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public GameObject prefab;    // Click the "Instantiate!" button and a new `prefab` will be instantiated
    // somewhere within -10.0 and 10.0 (inclusive) on the x-z plane
    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 100, 50), "Instantiate!"))
        {
            var position = new Vector3(Random.Range(-10.0f, 10.0f), 0, Random.Range(-10.0f, 10.0f));
            Instantiate(prefab, position, Quaternion.identity);
        }
    }
}
```

### Description

Return a random `int` within `[minInclusive..maxExclusive)` (Read Only).

The maximum parameter is exclusive, so for example `Random.Range(0, 10)` returns a value between 0 and 9, each with approximately equal probability.

If `minInclusive` and `maxExclusive` are equal, the method returns `minInclusive`.

If `minInclusive` is greater than `maxExclusive`, the input parameters are swapped but retain their inclusivity or exclusivity based on their original positions, which means the method becomes `Random.Range(minExclusive, maxInclusive)` after swapping.

For example, calling `Random.Range(10, 0)` is not equivalent to `Random.Range(0, 10)`. `Random.Range(10, 0)` returns a value between 1 and 10 because 10 becomes an inclusive maximum and 0 becomes an exclusive minimum.

There is a `float` overload of this function that operates slightly differently, especially regarding the range maximum, refer to its docs above.

Refer to Random for details on the algorithm, and for examples of how `UnityEngine.Random` may differ from other random number generators.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public GameObject prefab;
    public float zoffset = 10;    // Click the "Instantiate!" button and a new grid of `prefab` objects will be
    // instantiated with a random number of items in each direction.
    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 100, 50), "Instantiate!"))
        {
            // the grid will always be 1, 2, 3, 4, or 5 prefabs wide
            int xcount = Random.Range(1, 6);
            // the grid will always be 2, 3, or 4 prefabs long
            int ycount = Random.Range(2, 5);            for (int x = 0; x != xcount; ++x)
            {
                for (int y = 0; y != ycount; ++y)
                {
                    var position = new Vector3(x * 2, zoffset, y * 2);
                    Instantiate(prefab, position, Quaternion.identity);
                }
            }            zoffset += 2;
        }
    }
}
```
