<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.SetPositionsSelf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| checkForDuplicatePositions | Whether to check for duplicate light probe positions at the cost of performance. |
| positions | The positions to set. |

### Returns

**bool** `true` when the positions were successfully set. Otherwise `false`.

### Description

Sets the positions of the baked light probes stored in this `LightProbes` object.

When you change the positions of baked light probes using this method, you must call LightProbes.Tetrahedralize or LightProbes.TetrahedralizeAsync to fully apply the changes.

Setting duplicate light probe positions will lead to incorrect behavior, such as black light probes appearing..

The following script additively loads a scene containing baked light probes and moves the probes:

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;public class MoveLightProbesExample : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(LoadSceneAndMoveLightProbes());
    }    IEnumerator LoadSceneAndMoveLightProbes()
    {
        // Fully load a scene containing light probes additively.
        Scene additiveScene = SceneManager.LoadScene("AdditiveScene", new LoadSceneParameters(LoadSceneMode.Additive));
        yield return null;        // Get the light probes for the scene.
        LightProbes lightProbes = LightProbes.GetInstantiatedLightProbesForScene(additiveScene);        // Move the light probes slightly.
        Vector3[] positions = lightProbes.GetPositionsSelf();
        for (int i = 0; i < positions.Length; i++)
        {
            positions[i] += Vector3.one;
        }
        lightProbes.SetPositionsSelf(positions, true);        // Tetrahedralize to apply the changes to light probe positions.
        LightProbes.TetrahedralizeAsync();
    }
}
```

Additional resources: LightProbes.countSelf.
