<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit-textureCoord2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The secondary uv texture coordinate at the impact point.

This can be used for 3D texture painting or drawing bullet marks. If the collider is not a mesh collider, Vector2.zero will be returned. If the mesh contains no secondary uv set, the uv of the primary uv set will be returned. This property can be accessed off the main thread.

**Note:** A textureCoord2 requires the collider to be a MeshCollider.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;public class Example : MonoBehaviour
{
    // Attach this script to a camera and it will paint black pixels in 3D
    // on whatever the user clicks. Make sure the mesh you want to paint
    // on has a mesh collider attached.    Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
    }    void Update()
    {
        // Only when we press the mouse
        if (!Mouse.current.leftButton.isPressed)
        {
            return;
        }        // Only if we hit something, do we continue
        RaycastHit hit;
        if (!Physics.Raycast(cam.ScreenPointToRay(Mouse.current.position.ReadValue()), out hit))
        {
            return;
        }        // Just in case, also make sure the collider also has a renderer
        // material and texture. Also we should ignore primitive colliders.
        Renderer rend = hit.transform.GetComponent<Renderer>();        MeshCollider meshCollider = hit.collider as MeshCollider;        if (rend == null || rend.sharedMaterial == null ||
            rend.sharedMaterial.mainTexture == null || meshCollider == null)
        {
            return;
        }        // Now draw a pixel where we hit the object
        Texture2D tex = rend.material.mainTexture as Texture2D;
        Vector2 pixelUV = hit.textureCoord2;
        pixelUV.x *= tex.width;
        pixelUV.y *= tex.height;        tex.SetPixel(Mathf.FloorToInt(pixelUV.x), Mathf.FloorToInt(pixelUV.y), Color.black);        tex.Apply();
    }
}
```
