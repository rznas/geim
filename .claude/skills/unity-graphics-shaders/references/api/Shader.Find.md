<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.Find.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Finds a shader with the given `name`. Returns `null` if the shader is not found.

Shader.Find can be used to switch to another shader without having to keep a reference to the shader. `name` is the name you can see in the shader popup of any material, for example "Standard", "Unlit/Texture", "Legacy Shaders/Diffuse" etc.

Note that a shader might be not included into the player build if nothing references it. In that case, Shader.Find will work only in the Editor, and will result in the pink error shader in a build. Because of that, it is advisable to use shader references instead of finding them by name. To make sure a shader is included into the game build, do either of: 1) reference it from some of the materials used in your Scene, 2) add it under "Always Included Shaders" list in ProjectSettings/Graphics or 3) put shader or something that references it (e.g. a Material) into a "Resources" folder.

Additional resources: Material class.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Create a material from code
    void Start()
    {
        // Create a material with transparent diffuse shader
        Material material = new Material(Shader.Find("Transparent/Diffuse"));
        material.color = Color.green;        // assign the material to the renderer
        GetComponent<Renderer>().material = material;
    }
}
```
