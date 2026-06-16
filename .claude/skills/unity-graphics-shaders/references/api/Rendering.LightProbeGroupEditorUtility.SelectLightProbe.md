<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeGroupEditorUtility.SelectLightProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lightProbeIndex | The light probe to select. |

### Description

Selects a light probe in the Light Probe edit tool.

The index matches those in the Probe Positions field on the LightProbeGroup component. If no Probes are being edited, this method doesn't do anything.

Additional resources: LightProbeGroup.probePositions.

```csharp
using UnityEditor;
using UnityEditor.Rendering;public static class ProbeSelectionDemo
{
    [MenuItem("Example/Select First Probe")]
    private static void SelectFirstProbe()
    {
        // If light probes are not currently being edited, or the probe is already selected, this does nothing.
        LightProbeGroupEditorUtility.SelectLightProbe(0);
    }
}
```
