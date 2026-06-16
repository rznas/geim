<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-frameCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total number of frames since the start of the game (Read Only).

This value starts at 0 and increases by 1 on each Update phase.

Internally, Unity uses a 64 bit integer which it downcasts to 32 bits when this is called, and discards the most significant (i.e. top) 32 bits.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Ensures RecalculateValue only performs
    // its operations once per frame.
    static private int lastRecalculation = -1;    static void RecalculateValue()
    {
        if (lastRecalculation == Time.frameCount)
            return;        // Mark that we've processed for this frame
        lastRecalculation = Time.frameCount;        // Process data only once per frame
        // ProcessData.AndDoSomeCalculations();
    }
}
```

**Note:** frameCount starts once all Awake functions have finished. The frameCount value is undefined during Awake functions.
