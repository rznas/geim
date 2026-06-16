<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectFactory.CreateInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of instance to create. |

### Description

Create a new instance of the given type.

Use this method to create any type of serialized object in the Editor. The created instance uses default values.

```csharp
using UnityEngine;
using UnityEditor;public class CreateInstanceExample
{
    [MenuItem("ObjectFactoryExample/Create Material Asset")]
    public void CreateMaterialEditor()
    {
        Material material = ObjectFactory.CreateInstance<Material>();
        material.shader = Shader.Find("Transparent/Diffuse");
        AssetDatabase.CreateAsset(material, "Assets/newMaterial.mat");
    }
}
```
