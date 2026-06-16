<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeGroupEditorUtility.GetSelectedLightProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ReadOnlyCollection<int>** The indexes to the probes currently being selected.

### Description

Retrieves the currently selected probes, as indexes.

To modify the positions of the probes, use the indexes with the Probe Positions field on the LightProbeGroup component. This method returns an empty list if no Probes are being edited.

Additional resources: LightProbeGroup.probePositions.

```csharp
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine;public static class LogSelectedLightProbes
{
    [MenuItem("Example/Log Selected Light Probes")]
    private static void LogProbes()
    {
        foreach (var probe in LightProbeGroupEditorUtility.GetSelectedLightProbes())
            Debug.Log(probe);
    }
}
```
