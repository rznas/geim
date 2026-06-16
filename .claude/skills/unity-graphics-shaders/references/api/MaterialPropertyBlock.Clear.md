<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.Clear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clear material property values.

Graphics.RenderMesh copies the passed property block, so the most efficient way of using it is to create one block and reuse it for all DrawMesh calls. Use Clear to clear block's values, and SetFloat, SetVector, SetColor, SetMatrix to add values.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Mesh aMesh;
    Material aMaterial = new Material(Shader.Find("VertexLit"));    void Update()
    {
        MaterialPropertyBlock materialProperty = new MaterialPropertyBlock();        // Clear any property and add a red color
        materialProperty.Clear();
        materialProperty.SetColor("_Color", Color.red);
        Graphics.DrawMesh(aMesh, new Vector3(5, 0, 0),
            Quaternion.identity, aMaterial, 0, null, 0, materialProperty);        // Clear any property and add a green color
        materialProperty.Clear();
        materialProperty.SetColor("_Color", Color.green);
        Graphics.DrawMesh(aMesh, new Vector3(-5, 0, 0),
            Quaternion.identity, aMaterial, 0, null, 0, materialProperty);
    }
}
```
