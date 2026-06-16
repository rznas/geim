<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitUntil-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| predicate | Supplied delegate will be evaluated each frame after MonoBehaviour.Update and before MonoBehaviour.LateUpdate until delegate returns `true`. |

### Description

Initializes a yield instruction with a given delegate to be evaluated.

### Parameters

| Parameter | Description |
| --- | --- |
| predicate | Supplied delegate will be evaluated each frame after MonoBehaviour.Update and before MonoBehaviour.LateUpdate until delegate returns `true`. |
| timeout | Maximum time to wait after creation of the instance for the predicate to return `true`. |
| onTimeout | The action to perform when the `timeout` is reached. Only performed if the predicate fails to return `true` before the maximum time specified. |
| timeoutMode | Mode in which to measure time to determine `timeout`. Real time by default. Can be set to in-game time, which is scaled according to the value of Time.timeScale. |

### Description

Initializes a yield instruction with a given delegate to be evaluated.

```csharp
using UnityEngine;
using System;
using System.Collections;public class WaitUntilExample : MonoBehaviour
{
    public bool buttonPressed;    void Start()
    {
        StartCoroutine(Example());
    }    IEnumerator Example()
    {
        Debug.Log("Waiting for button to be pressed...");
        yield return new WaitUntil(() => buttonPressed, TimeSpan.FromSeconds(3), () => Debug.Log("button was not pressed in time!"));
    }
}
```
