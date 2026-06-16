<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.SetQualityLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Quality index to set. |
| applyExpensiveChanges | Should expensive changes be applied (Anti-aliasing etc). |

### Description

Sets a new graphics quality level.

The list of quality levels can be found by going to **Edit** > **Project Settings** > **Quality**. You can add, remove or edit these.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        string[] names = QualitySettings.names;
        GUILayout.BeginVertical();
        for (int i = 0; i < names.Length; i++)
        {
            if (GUILayout.Button(names[i]))
            {
                QualitySettings.SetQualityLevel(i, true);
            }
        }
        GUILayout.EndVertical();
    }
}
```

Note that changing the quality level can be an expensive operation if the new level has different anti-aliasing setting. It's fine to change the level when applying in-game quality options, but if you want to dynamically adjust quality level at runtime, pass false to applyExpensiveChanges so that expensive changes are not always applied.

When building a player quality levels that are not used for that platform are stripped. You should not expect a given quality setting to be at a given index. It's best to query the available quality settings and use the returned index.

Additional resources: GetQualityLevel.
