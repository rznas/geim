<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorPrefs.SetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | Name of key to write float into. |
| value | Float value to write into the storage. |

### Description

Sets the float value of the preference identified by `key`.

```csharp
// Simple script that allows a float value to be editted
// in a slider. The final value is written into the Editor Preferences.using UnityEngine;
using UnityEditor;
using System;public class SetFloatExample : EditorWindow
{
    static float floatValue = 0.0f;    [MenuItem("Examples/Preferences SetFloat Example")]
    static void Init()
    {
        Rect r = new Rect(10, 10, 200, 100);
        SetFloatExample window = (SetFloatExample)EditorWindow.GetWindowWithRect(typeof(SetFloatExample), r);
        window.Show();
    }    void Awake()
    {
        floatValue = EditorPrefs.GetFloat("FloatExample", floatValue);
    }    void OnGUI()
    {
        floatValue = EditorGUILayout.Slider(floatValue, -1.0f, 1.0f);
        if (GUILayout.Button("Save float " + Convert.ToString(floatValue) + "?"))
        {
            EditorPrefs.SetFloat("FloatExample", floatValue);
        }
        if (GUILayout.Button("Close"))
            this.Close();
    }
}
```
