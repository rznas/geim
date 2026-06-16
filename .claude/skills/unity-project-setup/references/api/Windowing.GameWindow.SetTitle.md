<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.SetTitle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The new title for the window. |

### Returns

**AsyncOperation** An AsyncOperation that represents the asynchronous operation.

### Description

Sets the title of the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class SetWindowTitleExample : MonoBehaviour
{
    AsyncOperation asyncOperation = null;    void Start()
    {
        var window = GameWindow.Main;
        asyncOperation = window.SetTitle("My Game Window");
    }    void Update()
    {
        if (asyncOperation != null && asyncOperation.isDone)
        {
            Debug.Log("Window title set successfully.");
            asyncOperation = null;
        }
    }
}
```
