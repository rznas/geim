<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.OnRenderObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnRenderObject is called after camera has rendered the Scene.

This can be used to render your own objects using Graphics.DrawMeshNow or other functions. This function is similar to OnPostRender, except OnRenderObject is called on any object that has a script with the function; no matter if it's attached to a Camera or not.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Mesh mainMesh;
    Mesh miniMapMesh;    void OnRenderObject()
    {
        // Render different meshes for the object depending on whether
        // the main camera or minimap camera is viewing.
        if (Camera.current.name == "MiniMapcam")
        {
            Graphics.DrawMeshNow(miniMapMesh, transform.position, transform.rotation);
        }
        else
        {
            Graphics.DrawMeshNow(mainMesh, transform.position, transform.rotation);
        }
    }
}
```
