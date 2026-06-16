<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.TetrahedralizeAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Asynchronously tetrahedralize all currently loaded LightProbe positions.

Call this function to asynchronously calculate a Delaunay tetrahedralization of all currently loaded LightProbe positions, and update the LightProbes object with the result. Note that Unity does not raise an event when this asynchronous method completes.

Call this method after you load a Scene with LoadSceneMode.Additive, or unload a Scene with SceneManager.UnloadSceneAsync. Note that updating the tetrahedral tessellation is CPU-intensive. For more information, see Light Probes and Scene loading.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;public class TetrahedralizeAsyncExample : MonoBehaviour
{
    void Start()
    {
        // Additively load a Scene containing light probes
        SceneManager.LoadScene("ExampleScene", LoadSceneMode.Additive);        // Force Unity to asynchronously regenerate the tetrahedral tesselation for all loaded Scenes
        LightProbes.TetrahedralizeAsync();
    }
}
```

Additional resources: LightProbes.Tetrahedralize, Light Probes in the Unity Manual, Lightmapping.Tetrahedralize.
