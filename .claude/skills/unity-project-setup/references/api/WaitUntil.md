<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitUntil.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Suspends the coroutine execution until the supplied delegate evaluates to `true`.

`WaitUntil` can only be used with a `yield` statement in coroutines.

The supplied delegate is executed each frame after MonoBehaviour.Update and before MonoBehaviour.LateUpdate. When the delegate evaluates to `true`, the coroutine resumes.

Additional resources: AsyncOperation, WaitForEndOfFrame, WaitForFixedUpdate, WaitForSeconds, WaitForSecondsRealtime, WaitWhile.

```csharp
using UnityEngine;
using System.Collections;public class WaitUntilExample : MonoBehaviour
{
    public int frame;    void Start()
    {
        StartCoroutine(Example());
    }    IEnumerator Example()
    {
        Debug.Log("Waiting for princess to be rescued...");
        yield return new WaitUntil(() => frame >= 10);
        Debug.Log("Princess was rescued!");
    }    void Update()
    {
        if (frame <= 10)
        {
            Debug.Log("Frame: " + frame);
            frame++;
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| WaitUntil | Initializes a yield instruction with a given delegate to be evaluated. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| keepWaiting | Indicates if coroutine should be kept suspended. |
