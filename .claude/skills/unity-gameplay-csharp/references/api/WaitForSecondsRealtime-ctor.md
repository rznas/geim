<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitForSecondsRealtime-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a yield instruction to wait for a given number of seconds using unscaled time.

```csharp
using UnityEngine;
using System.Collections;public class WaitForSecondsExample : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(Example());
    }    IEnumerator Example()
    {
        print(Time.time);
        yield return new WaitForSecondsRealtime(5);
        print(Time.time);
    }
}
```
