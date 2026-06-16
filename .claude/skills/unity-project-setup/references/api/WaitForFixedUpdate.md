<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitForFixedUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Suspends coroutine execution until the next fixed update.

`WaitForFixedUpdate` can only be used with a `yield` statement in coroutines.

Additional resources: AsyncOperation, WaitForEndOfFrame, WaitForSeconds, WaitForSecondsRealtime, WaitUntil, WaitWhile.

```csharp
using System.Collections;
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public void Start()
    {
        StartCoroutine(Example_WaitForFixedUpdate_Coroutine());
    }    public IEnumerator Example_WaitForFixedUpdate_Coroutine()
    {
        Debug.Log("Start of WaitForFixedUpdate Example");
        
        yield return new WaitForFixedUpdate();
        
        Debug.Log("End of WaitForFixedUpdate Example");
    }
}
```

### Inherited Members
