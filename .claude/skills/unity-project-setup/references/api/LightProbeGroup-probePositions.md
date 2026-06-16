<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbeGroup-probePositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor only function to access and modify probe positions.

Probe positions are specified in local space relative to the parent object.

At runtime this function will return an empty Vector3 array and setting it will have no effect.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleScript : EditorWindow
{
    private LightProbeGroup lightProbes = null;    [MenuItem("Example/Set Probe Positions")]
    static void Init()
    {
        var window = GetWindowWithRect<ExampleScript>(new Rect(0, 0, 350, 50));
        window.Show();
    }    void OnGUI()
    {
        lightProbes = (LightProbeGroup)EditorGUILayout.ObjectField(
            "Find Dependency",     // string
            lightProbes,       // Object
            typeof(LightProbeGroup),     // Type
            true);        if (lightProbes)
        {
            if (GUILayout.Button("Set Probe Positions"))
            {
                Vector3[] positions = new Vector3[4];
                positions[0] = new Vector3(0.0f, 0.0f, 0.0f);
                positions[1] = new Vector3(1.0f, 0.0f, 0.0f);
                positions[2] = new Vector3(0.0f, 1.0f, 0.0f);
                positions[3] = new Vector3(1.0f, 1.0f, 1.0f);
                lightProbes.probePositions = positions;
            }
        }
        else
        {
            EditorGUILayout.LabelField("Missing:", "Please select an object first!");
        }
    }
}
```
