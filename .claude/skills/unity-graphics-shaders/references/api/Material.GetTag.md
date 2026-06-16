<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the value of material's shader tag.

If the material's shader does not define the tag, `defaultValue` is returned.

If `searchFallbacks` is `true` then this function will look for tag in all subshaders and all fallbacks. If `searchFallbacks` is `false` then only the currently used subshader will be queried for the tag.

Using `GetTag` without searching through fallbacks makes it possible to detect which subshader is currently being used: add a custom tag to each subshader with different value, and query the value at run time. For example, Unity water uses this function to detect when the shader falls back to non-reflective one, and turns off reflection camera in that case.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Attach this to a gameObject that has a renderer.    string materialTag = "RenderType";    void Start()
    {
        Renderer rend = GetComponent<Renderer>();
        string result = rend.material.GetTag(materialTag, true, "Nothing");        if (result == "Nothing")
        {
            Debug.LogError(materialTag + " not found in " + rend.material.shader.name);
        }
        else
        {
            Debug.Log("Tag found!, its value: " + result);
        }
    }
}
```
