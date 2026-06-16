<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.Tetrahedralize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Synchronously tetrahedralize the currently loaded LightProbe positions.

Call this function to tetrahedralize the currently loaded LightProbe positions. You should generally only call this function upon receiving a LightProbes.needsRetetrahedralization event.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;public class TetrahedralizeExample : MonoBehaviour
{
    void Start()
    {
        // Additively load a Scene containing light probes
        SceneManager.LoadScene("ExampleScene", LoadSceneMode.Additive);        // Force Unity to synchronously regenerate the tetrahedral tesselation for all loaded Scenes
        LightProbes.Tetrahedralize();
    }
}
```

Additional resources: LightProbes.TetrahedralizeAsync, Light Probes in the Unity Manual, Lightmapping.Tetrahedralize.
