<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitForSeconds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Suspends the coroutine execution for the specified scaled time in seconds.

WaitForSeconds can only be used with a `yield` statement in coroutines.

The real time suspended is equal to the given time divided by Time.timeScale. To wait using unscaled time, refer to WaitForSecondsRealtime.

The actual length of time waited might not match the time specified for the following reasons:

- If you start `WaitForSeconds` with duration `t` in a long frame (for example, one which has a long operation which blocks the main thread such as some synchronous loading), the coroutine resumes `t` seconds after the end of the frame rather than `t` seconds after it was called.
- The coroutine might resume on the first frame after `t` seconds has passed rather than immediately after `t` seconds has passed.

```csharp
using UnityEngine;
using System.Collections;public class WaitForSecondsExample : MonoBehaviour
{
    void Start()
    {
        //Start the coroutine we define below named ExampleCoroutine.
        StartCoroutine(ExampleCoroutine());
    }    IEnumerator ExampleCoroutine()
    {
        //Print the time of when the function is first called.
        Debug.Log("Started Coroutine at timestamp : " + Time.time);        //yield on a new YieldInstruction that waits for 5 seconds.
        yield return new WaitForSeconds(5);        //After we have waited 5 seconds print the time again.
        Debug.Log("Finished Coroutine at timestamp : " + Time.time);
    }
}
```

Additional resources: MonoBehaviour.StartCoroutine, AsyncOperation, WaitForEndOfFrame, WaitForFixedUpdate, WaitForSecondsRealtime, WaitUntil, WaitWhile.

### Constructors

| Constructor | Description |
| --- | --- |
| WaitForSeconds | Suspends the coroutine execution for the given amount of seconds using scaled time. |

### Inherited Members
