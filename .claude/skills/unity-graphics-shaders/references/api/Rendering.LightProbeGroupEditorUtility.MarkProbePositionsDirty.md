<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeGroupEditorUtility.MarkProbePositionsDirty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Informs the Light Probe Editor tool that you have modified the probe positions.

This method refreshes the preview Tetrahedra visible in the Scene View, representing the current state. If no Probes are being edited, this method doesn't do anything.

```csharp
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine;public static class ProbeEditingDemo
{
    [MenuItem("Example/Move first probe up by 1Y")]
    private static void CenterFirstProbe()
    {
        if (!LightProbeGroupEditorUtility.probesAreBeingEdited)
        {
            Debug.Log("No probes are being edited");
            return;
        }
        var selection = Selection.activeGameObject.GetComponent<LightProbeGroup>();
        Vector3[] probePositions = new Vector3[selection.probePositions.Length];
        selection.probePositions.CopyTo(probePositions, 0);
        probePositions[0].y += 1;
        selection.probePositions = probePositions;
        // If you comment out the following call, the Tetrahedra will continue to show the old state
        LightProbeGroupEditorUtility.MarkProbePositionsDirty();
    }
}
```
