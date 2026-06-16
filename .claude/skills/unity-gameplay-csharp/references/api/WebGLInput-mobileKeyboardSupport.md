<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGLInput-mobileKeyboardSupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable mobile keyboard support for UI input fields.

This property determines whether to enable mobile keyboard support for UI input fields. If this is enabled (default), the browser's soft keyboard will be requested when selecting an input field, and may impose some overhead to touch down and up events.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
#if !UNITY_EDITOR && UNITY_WEBGL
        // disable WebGLInput.mobileKeyboardSupport so the built-in mobile keyboard support is disabled.
        WebGLInput.mobileKeyboardSupport = false;
#endif
    }
}
```
