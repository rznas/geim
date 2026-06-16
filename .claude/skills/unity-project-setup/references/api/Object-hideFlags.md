<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object-hideFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the object be hidden, saved with the Scene or modifiable by the user?

Additional resources: HideFlags.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Creates a material that is explicitly created & destroyed by the component.
    // Resources.UnloadUnusedAssets will not unload it, and it will not be editable by the inspector.
    private Material ownedMaterial;
    void OnEnable()
    {
        ownedMaterial = new Material(Shader.Find("Diffuse"));
        ownedMaterial.hideFlags = HideFlags.HideAndDontSave;
        GetComponent<Renderer>().sharedMaterial = ownedMaterial;
    }    // Objects created as hide and don't save must be explicitly destroyed by the owner of the object.
    void OnDisable()
    {
        DestroyImmediate(ownedMaterial);
    }
}
```
