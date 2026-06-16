<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL-wireframe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should rendering be done in wireframe?

Turning on wireframe mode will affect all objects rendered after the call, until you turn wireframe back off. In the Unity editor, wireframe mode is always turned off before repainting any window.

Note that some platforms, for example mobile (OpenGL ES) does not support wireframe rendering.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Attach this script to a camera, this will make it render in wireframe
    void OnPreRender()
    {
        GL.wireframe = true;
    }    void OnPostRender()
    {
        GL.wireframe = false;
    }
}
```
