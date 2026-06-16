<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HideFlags.HideAndDontSave.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The GameObject is not shown in the Hierarchy, not saved to the Scene, and not unloaded by Resources.UnloadUnusedAssets.

This is most commonly used for GameObjects which are created by a script and are purely under the script's control.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Creates a Material that is explicitly created & destroyed by the component.
    // Resources.UnloadUnusedAssets will not unload it, and it will not be editable by the Inspector.
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
