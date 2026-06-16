<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random-value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random float within [0.0..1.0] (range is inclusive) (Read Only).

**Important**: Both the lower and upper bounds are **inclusive**. Any given float value between 0.0 and 1.0, *including both 0.0 and 1.0*, will appear on average approximately once every ten million random samples.

See Random for more examples of how `UnityEngine.Random` may be different from other random number generators.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color randomColor = RandomColor();
    }    // Generate a random color value.
    Color RandomColor()
    {
        // A different random value is used for each color component (if
        // the same is used for R, G and B, a shade of grey is produced).
        return new Color(Random.value, Random.value, Random.value);
    }
}
```
