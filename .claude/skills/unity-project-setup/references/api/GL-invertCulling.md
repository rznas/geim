<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL-invertCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Select whether to invert the backface culling (true) or not (false).

This flag can "flip" the culling mode of all rendered objects. Major use case: rendering reflections for mirrors, water etc. Since virtual camera for rendering the reflection is mirrored, the culling order has to be inverted. You can see how the Water script in Effects standard package does that.

```csharp
// When attached to the camera, this script
// will make all rendering be flipped "inside out",
// i.e. back faces of objects will be rendered instead
// of front faces.
using UnityEngine;[ExecuteInEditMode]
public class ExampleScript : MonoBehaviour
{
    private bool oldCulling;
    public void OnPreRender()
    {
        oldCulling = GL.invertCulling;
        GL.invertCulling = true;
    }    public void OnPostRender()
    {
        GL.invertCulling = oldCulling;
    }
}
```
