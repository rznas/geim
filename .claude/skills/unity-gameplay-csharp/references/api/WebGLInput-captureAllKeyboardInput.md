<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGLInput-captureAllKeyboardInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Capture all keyboard inputs.

This property determines whether keyboard inputs are captured by WebGL. If this is enabled (default), all inputs will be received by the WebGL canvas regardless of focus, and other elements in the webpage will not receive keyboard inputs. You need to disable this property if you need inputs to be received by other html input elements.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
#if !UNITY_EDITOR && UNITY_WEBGL
        // disable WebGLInput.captureAllKeyboardInput so elements in web page can handle keyboard inputs
        WebGLInput.captureAllKeyboardInput = false;
#endif
    }
}
```
