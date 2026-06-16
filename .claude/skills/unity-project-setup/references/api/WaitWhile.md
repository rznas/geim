<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitWhile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Suspends the coroutine execution until the supplied delegate evaluates to `false`.

`WaitWhile` can only be used with a `yield` statement in coroutines.

The supplied delegate is executed each frame after MonoBehaviour.Update and before MonoBehaviour.LateUpdate. When the delegate evaluates to `false`, the coroutine resumes.

```csharp
using UnityEngine;
using System.Collections;public class WaitWhileExample : MonoBehaviour
{
    public int frame;    void Start()
    {
        StartCoroutine(Example());
    }    IEnumerator Example()
    {
        Debug.Log("Waiting for prince/princess to rescue me...");
        yield return new WaitWhile(() => frame < 10);
        Debug.Log("Finally I have been rescued!");
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

Additional resources: AsyncOperation, WaitForEndOfFrame, WaitForFixedUpdate, WaitForSeconds, WaitForSecondsRealtime, WaitUntil.

### Constructors

| Constructor | Description |
| --- | --- |
| WaitWhile | Initializes a yield instruction with a given delegate to be evaluated. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| keepWaiting | Indicates if coroutine should be kept suspended. |
