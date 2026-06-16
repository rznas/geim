<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GameObjectRecorder.Bind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| binding | The binding definition. |

### Description

Binds a GameObject's property as defined by EditorCurveBinding.

Use this function to bind a specific GameObject's property. The binding is defined in EditorCurveBinding. See the following example on binding the `MeshRenderer.m_Enabled` property.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Animations;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var recorder = new GameObjectRecorder(gameObject);        // Add a binding on the position on X axis.
        EditorCurveBinding binding = EditorCurveBinding.FloatCurve("", typeof(Transform), "m_LocalPosition.x");
        recorder.Bind(binding);        // Add a binding on the activation of the MeshRenderer component.
        binding = EditorCurveBinding.FloatCurve("", typeof(MeshRenderer), "m_Enabled");
        recorder.Bind(binding);
    }
}
```
