<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.SetColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property. |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| value | The Color value to set. |

### Description

Set a color property.

Adds a property to the block. If a color property with the given name already exists, the old value is replaced.

The method assumes that the color value is in sRGB space. The method converts the value to linear color space if the active project color space is linear.

if you switch between color spaces in your project, Unity does not convert color values automatically. You need to handle the conversion yourself.

The `SetColor` method does not support setting HDR colors directly.

To set HDR colors, use MaterialPropertyBlock.SetVector instead, passing a Vector4 where the RGB components represent the HDR color and the W component is the alpha value.

```csharp
using UnityEngine;// Draws 3 meshes with the same material but with different colors.
using UnityEngine;
public class ExampleClass : MonoBehaviour
{
    public Mesh mesh;
    public Material material;
    private MaterialPropertyBlock block;    void Start()
    {
        block = new MaterialPropertyBlock();
    }    void Update()
    {
        // setup render params
        RenderParams rp = new RenderParams(material) {matProps = block};        // red mesh
        block.SetColor("_Color", Color.red);
        Graphics.RenderMesh(rp, mesh, 0, Matrix4x4.Translate(new Vector3(0, 0, 0)));        // green mesh
        block.SetColor("_Color", Color.green);
        Graphics.RenderMesh(rp, mesh, 0, Matrix4x4.Translate(new Vector3(5, 0, 0)));        // blue mesh
        block.SetColor("_Color", Color.blue);
        Graphics.RenderMesh(rp, mesh, 0, Matrix4x4.Translate(new Vector3(-5, 0, 0)));
    }
}
```

Function variant that takes `nameID` is faster. If you are changing properties with the same name repeatedly, use Shader.PropertyToID to get unique identifier for the name, and pass the identifier to SetColor.

```csharp
using UnityEngine;// Draws 3 meshes with the same material but with different colors.
using UnityEngine;
public class ExampleClass : MonoBehaviour
{
    public Mesh mesh;
    public Material material;
    private MaterialPropertyBlock block;    void Start()
    {
        block = new MaterialPropertyBlock();
    }    void Update()
    {
        // setup render params
        RenderParams rp = new RenderParams(material) {matProps = block};        // red mesh
        block.SetColor("_Color", Color.red);
        Graphics.RenderMesh(rp, mesh, 0, Matrix4x4.Translate(new Vector3(0, 0, 0)));        // green mesh
        block.SetColor("_Color", Color.green);
        Graphics.RenderMesh(rp, mesh, 0, Matrix4x4.Translate(new Vector3(5, 0, 0)));        // blue mesh
        block.SetColor("_Color", Color.blue);
        Graphics.RenderMesh(rp, mesh, 0, Matrix4x4.Translate(new Vector3(-5, 0, 0)));
    }
}
```

Additional resources: SetFloat, SetVector, SetMatrix, SetTexture.
