<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-gradientValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value of a gradient property.

Additional resources: propertyType, SerializedPropertyType.Gradient, Gradient.

```csharp
using System;
using UnityEditor;
using UnityEngine;[CreateAssetMenu]
public class SerializedPropertyGradientExample : ScriptableObject
{
    public Gradient m_Gradient;    [Range(0, 1)]
    public float m_EvaluationTime;    public SerializedPropertyGradientExample()
    {
        // Establish a default gradient
        var colorKeys = new GradientColorKey[]
        {
            new GradientColorKey() { color = Color.red, time = 0.0f },
            new GradientColorKey() { color = Color.green, time = 0.5f },
            new GradientColorKey() { color = Color.blue, time = 1.0f }
        };
        var alphaKeys = new GradientAlphaKey[]
        {
            new GradientAlphaKey() { alpha = 0.5f, time = 0.0f },
            new GradientAlphaKey() { alpha = 1.0f, time = 1.0f }
        };
        m_Gradient = new Gradient();
        m_Gradient.SetKeys(colorKeys, alphaKeys);
    }
}// Override the default inspector behavior to add extra text line after the two properties
[CustomEditor(typeof(SerializedPropertyGradientExample))]
public class SerializedPropertyGradientExampleEditor : Editor
{
    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();        var gradient = serializedObject.FindProperty("m_Gradient").gradientValue;
        var evalPoint = serializedObject.FindProperty("m_EvaluationTime").floatValue;
        GUILayout.Label($"Gradiant at time {evalPoint}: {gradient.Evaluate(evalPoint)}");
    }
}
```
