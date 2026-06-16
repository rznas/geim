<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem-displayFocusChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Delegate method to call when the event is sent. |

### Description

Event sent when XR display focus changes.

This event is sent on the main thread.

```csharp
using UnityEngine;
using UnityEngine.XR;public class ExampleClass : MonoBehaviour
{
    public XRDisplaySubsystem display;    void OnEnable()
    {
        display.displayFocusChanged += HandleFocusChanged;
    }    void OnDisable()
    {
        display.displayFocusChanged -= HandleFocusChanged;
    }    void HandleFocusChanged(bool focus)
    {
    }
}
```
