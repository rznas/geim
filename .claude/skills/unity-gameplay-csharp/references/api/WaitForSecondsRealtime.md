<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitForSecondsRealtime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Suspends the coroutine execution for the specified real (unscaled) time in seconds.

`WaitForSecondsRealtime` can only be used with a `yield` statement in coroutines.

To wait using scaled time, refer to WaitForSeconds.

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

See Also MonoBehaviour.StartCoroutine.

### Properties

| Property | Description |
| --- | --- |
| waitTime | The given amount of seconds that the yield instruction will wait for. |

### Constructors

| Constructor | Description |
| --- | --- |
| WaitForSecondsRealtime | Creates a yield instruction to wait for a given number of seconds using unscaled time. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| keepWaiting | Indicates if coroutine should be kept suspended. |
