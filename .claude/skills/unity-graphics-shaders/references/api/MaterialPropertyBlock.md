<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A block of material values to apply.

MaterialPropertyBlock is used by Graphics.RenderMesh and Renderer.SetPropertyBlock. Use it in situations where you want to draw multiple objects with the same material, but slightly different properties. For example, if you want to slightly change the color of each mesh drawn. Changing the render state is not supported.

Unity's terrain engine uses MaterialPropertyBlock to draw trees; all of them use the same material, but each tree has different color, scale & wind factor.

The block passed to Graphics.RenderMesh or Renderer.SetPropertyBlock is copied, so the most efficient way of using it is to create one block and reuse it for all DrawMesh calls. Use SetFloat, SetVector, SetColor, SetMatrix, SetTexture, SetBuffer to add or replace values.

Note that this is not compatible with SRP Batcher. Using this in the Universal Render Pipeline (URP), High Definition Render Pipeline (HDRP) or a custom render pipeline based on the Scriptable Render Pipeline (SRP) will likely result in a drop in performance.

The following example creates 10 GameObjects with random colors using `MaterialPropertyBlock`. To use the example, attach a prefab to the `myPrefab` property.

Additional resources: Graphics.RenderMesh, Material.

```csharp
using UnityEngine;public class CreateTenGameObjects : MonoBehaviour
{
    public GameObject myPrefab;    void Start()
    {
        // Loop through 10 GameObjects
        for (int i = 0; i < 10; i++)
        {
            // Instantiate a new GameObject at a unique position
            GameObject newObject = Instantiate(myPrefab, new Vector3(i * 2f, 0, 0), Quaternion.identity);            // Create a new MaterialPropertyBlock
            MaterialPropertyBlock propertyBlock = new MaterialPropertyBlock();            // Set a random color in the MaterialPropertyBlock
            propertyBlock.SetColor("_Color", Random.ColorHSV());            // Apply the MaterialPropertyBlock to the GameObject
            newObject.GetComponent<MeshRenderer>().SetPropertyBlock(propertyBlock);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| isEmpty | Is the material property block empty? (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Clear material property values. |
| CopyProbeOcclusionArrayFrom | This function copies the entire source array into a Vector4 property array named unity_ProbesOcclusion for use with instanced Shadowmask rendering. |
| CopySHCoefficientArraysFrom | This function converts and copies the entire source array into 7 Vector4 property arrays named unity_SHAr, unity_SHAg, unity_SHAb, unity_SHBr, unity_SHBg, unity_SHBb and unity_SHC for use with instanced light probe rendering. |
| GetColor | Get a color from the property block. |
| GetFloat | Get a float from the property block. |
| GetFloatArray | Get a float array from the property block. |
| GetInt | This method is deprecated. Use GetFloat or GetInteger instead. |
| GetInteger | Get an integer from the property block. |
| GetMatrix | Get a matrix from the property block. |
| GetMatrixArray | Get a matrix array from the property block. |
| GetTexture | Get a texture from the property block. |
| GetVector | Get a vector from the property block. |
| GetVectorArray | Get a vector array from the property block. |
| HasBuffer | Checks if MaterialPropertyBlock has the ComputeBuffer property with the given name or name ID. To set the property, use SetBuffer. |
| HasColor | Checks if MaterialPropertyBlock has the Color property with the given name or name ID. To set the property, use SetColor. |
| HasConstantBuffer | Checks if MaterialPropertyBlock has the ConstantBuffer property with the given name or name ID. To set the property, use SetConstantBuffer. |
| HasFloat | Checks if MaterialPropertyBlock has the Float property with the given name or name ID. To set the property, use SetFloat. |
| HasInt | This method is deprecated. Use HasFloat or HasInteger instead. |
| HasInteger | Checks if MaterialPropertyBlock has the Integer property with the given name or name ID. To set the property, use SetInteger. |
| HasMatrix | Checks if MaterialPropertyBlock has the Matrix property with the given name or name ID. This also works with the Matrix Array property. To set the property, use SetMatrix. |
| HasProperty | Checks if MaterialPropertyBlock has the property with the given name or name ID. To set the property, use one of the Set methods for MaterialPropertyBlock. |
| HasTexture | Checks if MaterialPropertyBlock has the Texture property with the given name or name ID. To set the property, use SetTexture. |
| HasVector | Checks if MaterialPropertyBlock has the Vector property with the given name or name ID. This also works with the Vector Array property. To set the property, use SetVector. |
| SetBuffer | Set a buffer property. |
| SetColor | Set a color property. |
| SetConstantBuffer | Sets a ComputeBuffer or GraphicsBuffer as a named constant buffer for the MaterialPropertyBlock. |
| SetFloat | Set a float property. |
| SetFloatArray | Set a float array property. |
| SetInt | This method is deprecated. Use SetFloat or SetInteger instead. |
| SetInteger | Adds a property to the block. If an integer property with the given name already exists, the old value is replaced. |
| SetMatrix | Set a matrix property. |
| SetMatrixArray | Set a matrix array property. |
| SetTexture | Set a texture property. |
| SetVector | Set a vector property. |
| SetVectorArray | Set a vector array property. |
