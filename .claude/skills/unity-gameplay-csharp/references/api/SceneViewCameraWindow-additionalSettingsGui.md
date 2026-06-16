<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneViewCameraWindow-additionalSettingsGui.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The SceneView that opened the SceneViewCameraWindow window. |

### Description

Subscribe to this event to receive a callback when the SceneViewCameraWindow.OnGUI function is called.

```csharp
using UnityEditor;
using UnityEngine;[InitializeOnLoad]
static class AdditionalCameraSettings
{
    static AdditionalCameraSettings()
    {
        SceneViewCameraWindow.additionalSettingsGui += DoAdditionalCameraSettings;
    }    static void DoAdditionalCameraSettings(SceneView sceneView)
    {
        GUILayout.Label("Additional Settings", EditorStyles.boldLabel);        float easing = sceneView.cameraSettings.easingDuration;        EditorGUI.BeginChangeCheck();        easing = EditorGUILayout.Slider("Easing Duration", easing, 0.001f, 1f);        if (EditorGUI.EndChangeCheck())
            sceneView.cameraSettings.easingDuration = easing;
    }
}
```
