<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit-textureCoord.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The uv texture coordinate at the collision location.

A ray is fired into the Scene. The `textureCoord` is the location where the ray has hit a collider. `RaycastHit._textureCoord` is a texture coordinate when a hit occurs. A Vector2 zero is returned if no mesh collider is present in the `GameObject`. This property can be accessed off the main thread. **Note:** A textureCoord requires the collider to be a MeshCollider. **Note:** In builds, textureCoord will return (0, 0) unless the mesh’s import settings have Read/Write Enabled checked.

```csharp
// Write black pixels onto the GameObject that is located
// by the script. The script is attached to the camera.
// Determine where the collider hits and modify the texture at that point.
//
// Note that the MeshCollider on the GameObject must have Convex turned off. This allows
// concave GameObjects to be included in collision in this example.
//
// Also to allow the texture to be updated by mouse button clicks it must have the Read/Write
// Enabled option set to true in its Advanced import settings.using UnityEngine;
using System.Collections;
using UnityEngine.InputSystem;public class ExampleClass : MonoBehaviour
{
    public Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
    }    void Update()
    {
        if (!Mouse.current.leftButton.isPressed)
            return;        RaycastHit hit;
        if (!Physics.Raycast(cam.ScreenPointToRay(Mouse.current.position.ReadValue()), out hit))
            return;        Renderer rend = hit.transform.GetComponent<Renderer>();
        MeshCollider meshCollider = hit.collider as MeshCollider;        if (rend == null || rend.sharedMaterial == null || rend.sharedMaterial.mainTexture == null || meshCollider == null)
            return;        Texture2D tex = rend.material.mainTexture as Texture2D;
        Vector2 pixelUV = hit.textureCoord;
        pixelUV.x *= tex.width;
        pixelUV.y *= tex.height;        tex.SetPixel((int)pixelUV.x, (int)pixelUV.y, Color.black);
        tex.Apply();
    }
}
```

Additional resources: Physics.Raycast, Physics.Linecast, Physics.RaycastAll.
