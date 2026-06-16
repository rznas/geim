<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | Create a material with a given Shader. |
| source | Create a material by copying all properties from another material. |

### Description

Create a temporary Material.

If you have a script which implements a custom special effect, you implement all the graphic setup using shaders & materials. Use this function to create a custom shader & material inside your script. After creating the material, use SetColor, SetTexture, SetFloat, SetVector, SetMatrix to populate the shader property values.

Additional resources: Materials, Shaders.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Creates a material from shader and texture references.
    Shader shader;
    Texture texture;
    Color color;    void Start()
    {
        Renderer rend = GetComponent<Renderer> ();        rend.material = new Material(shader);
        rend.material.mainTexture = texture;
        rend.material.color = color;
    }
}
```

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Creates a cube and assigns a material with a builtin Specular shader.
    void Start()
    {
        GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        Renderer rend = cube.GetComponent<Renderer> ();
        rend.material = new Material(Shader.Find("Specular"));
    }
}
```
