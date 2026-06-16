<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawTexture3DVolume.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| texture | The volumetric texture to draw. |
| opacity | The non-linear volume opacity modifier. Use this to control the opacity of the visualization. Valid values are 0-1, inclusive. A value of 1 is fully opaque and a value of 0 is fully transparent. The default value is 1. |
| qualityModifier | Sets the sample per texture pixel count. Higher values result in a higher quality render. The default value is 1. |
| filterMode | Sets the texture filtering mode to use. |
| useColorRamp | Enables color ramp visualization. |
| customColorRamp | The custom gradient that Unity uses as a color ramp. If this is not specified, Unity uses Google Turbo color ramp. |

### Description

Draws a 3D texture using Volume rendering mode in 3D space.

*Teapot volume rendered with a gradient that has a transparent black outline.*


 *Noise volume with fire gradient applied.*

```csharp
using UnityEditor;
using UnityEngine;[ExecuteInEditMode]
public class Reference : MonoBehaviour
{
    public Texture3D texture;
    public float alpha = 1;
    public float quality = 1;
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
                Handles.DrawTexture3DVolume(reference.texture, reference.alpha, reference.quality, reference.filterMode,
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

Additional resources: Handles.DrawTexture3DSDF, Handles.DrawTexture3DSlice, Texture3D, Gradient.
