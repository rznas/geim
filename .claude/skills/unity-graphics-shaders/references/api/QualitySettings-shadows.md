<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-shadows.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Real-time Shadows type to be used.

This determines which type of shadows should be used. The available options are Hard and Soft Shadows, Hard Shadows Only and Disable Shadows.

Additional resources: Light.shadows.

```csharp
using UnityEngine;// Let the shadow quality be selectedpublic class ExampleScript : MonoBehaviour
{
    private int selection = 0;
    private string[] itemName = {"   Disable   ", "   HardOnly   ", "   Hard and Soft   "};    void Start()
    {
        QualitySettings.shadows = ShadowQuality.All;
    }    void OnGUI()
    {
        GUILayout.BeginVertical("Box");
        selection = GUILayout.SelectionGrid(selection, itemName, 1, GUILayout.MinWidth(200), GUILayout.MinHeight(100));
        GUILayout.EndVertical();        switch (selection)
        {
            case 0: QualitySettings.shadows = ShadowQuality.Disable; break;
            case 1: QualitySettings.shadows = ShadowQuality.HardOnly; break;
            default: QualitySettings.shadows = ShadowQuality.All; break;
        }
    }
}
```
