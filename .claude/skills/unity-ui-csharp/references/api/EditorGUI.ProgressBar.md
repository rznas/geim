<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.ProgressBar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| totalPosition | Rectangle on the screen to use in total for both the control. |
| value | Value that is shown. |

### Description

Makes a progress bar.

Value goes from 0 to 1, where 0 means 0% of the bar filled and 1 means the bar is at 100% fully filled


 *Progress bar in an Editor Window.*

```csharp
using UnityEngine;
using System.Collections;
using UnityEditor;// Draw the armor and damage with bars in an Editor Windowpublic class EditorGUIProgressBar : EditorWindow
{
    float armor = 20;
    float damage  = 80;    [MenuItem("Examples/Display Info")]    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EditorGUIProgressBar), false, "DisplayInfo");
        window.Show();
    }    void OnGUI()
    {
        armor = EditorGUI.IntSlider(new Rect(3, 3, position.width - 6, 15), "Armor", Mathf.RoundToInt(armor), 0, 100);
        damage = EditorGUI.IntSlider(new Rect(3, 25, position.width - 6, 15), "Damage", Mathf.RoundToInt(damage), 0, 100);        EditorGUI.ProgressBar(new Rect(3, 45, position.width - 6, 20), armor / 100, "Armor");
        EditorGUI.ProgressBar(new Rect(3, 70, position.width - 6, 20), damage / 100, "Damage");
    }
}
```
