<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawTexture3DSlice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| texture | The volumetric texture to draw. |
| slicePositions | The positions of the texture sampling planes. |
| filterMode | Sets the texture filtering mode to use. |
| useColorRamp | Enables color ramp visualization. |
| customColorRamp | The custom gradient that Unity uses as a color ramp. If this is not specified, Unity uses Google Turbo color ramp. |

### Description

Draws a 3D texture using Slice rendering mode in 3D space.

*Head scan rendered in slice mode with a custom gradient.*

```csharp
using UnityEditor;
using UnityEngine;[ExecuteInEditMode]
public class Reference : MonoBehaviour
{
    public Texture3D texture;
    public Vector3 slicePositions;
    public FilterMode filterMode;
    public bool useColorRamp;
    public bool useCustomColorRamp;    // We should initialize this gradient before using it as a custom color ramp
    public Gradient customColorRampGradient;
}[CanEditMultipleObjects]
[CustomEditor(typeof(Reference))]
public class Handle : Editor
{
    private void OnSceneViewGUI(SceneView sv)
    {
        Object[] objects = targets;
        foreach (var obj in objects)
        {
            Reference reference = obj as Reference;
            if (reference != null && reference.texture != null)
            {
                Handles.matrix = reference.transform.localToWorldMatrix;
                Handles.DrawTexture3DSlice(reference.texture, reference.slicePositions, reference.filterMode,
                    reference.useColorRamp, reference.useCustomColorRamp ? reference.customColorRampGradient : null);
            }
        }
    }    void OnEnable()
    {
        SceneView.duringSceneGui += OnSceneViewGUI;
    }    void OnDisable()
    {
        SceneView.duringSceneGui -= OnSceneViewGUI;
    }
}
```

Additional resources: Handles.DrawTexture3DSDF, Handles.DrawTexture3DVolume, Texture3D, Gradient.
