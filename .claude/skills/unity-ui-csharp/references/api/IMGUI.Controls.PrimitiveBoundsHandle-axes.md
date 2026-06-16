<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.PrimitiveBoundsHandle-axes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags specifying which axes should display control handles.

By default, all axes are enabled. You can use bitwise operations to enable or disable individual axes. Disabled axes are flattened out.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.IMGUI.Controls;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // create a 2D box handle that only works on the x- and y-axes
        BoxBoundsHandle box = new BoxBoundsHandle("MyBox".GetHashCode());
        box.axes = PrimitiveBoundsHandle.Axes.X | PrimitiveBoundsHandle.Axes.Y;
    }
}
```
