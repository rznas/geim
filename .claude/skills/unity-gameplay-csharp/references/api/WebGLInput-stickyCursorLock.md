<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGLInput-stickyCursorLock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set cursor lock behavior to be "sticky" or "unsticky".

Sticky cursor lock means if the browser unlocks the cursor when the user presses the ESC key, the cursor will remain locked in Unity. To match the browser's behavior, this property can be set to false, which will "unstick" the cursor lock and unlock it in Unity as well. The default value for this propery is true.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
#if !UNITY_EDITOR && UNITY_WEBGL
        // disable WebGLInput.stickyCursorLock so if the browser unlocks the cursor (with the ESC key) the cursor will unlock in Unity
        WebGLInput.stickyCursorLock = false;
#endif
    }
}
```
