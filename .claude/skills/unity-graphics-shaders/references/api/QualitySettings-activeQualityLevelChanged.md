<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-activeQualityLevelChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | If the current Quality level is being changed this callback will be raised. |

### Description

Delegate that you can use to invoke custom code when Unity changes the current Quality Level.

Parameters are the previous Quality Level and the new Quality Level.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        QualitySettings.activeQualityLevelChanged += QualitySettings_activeQualityLevelChanged;
    }    private void QualitySettings_activeQualityLevelChanged(int previousQuality, int currentQuality)
    {
        // Put the code that you want to execute everytime the Quality used is changed
        Debug.Log($"Quality Level has been changed from {QualitySettings.names[previousQuality]} to {QualitySettings.names[currentQuality]}");
    }    void OnDestroy()
    {
        QualitySettings.activeQualityLevelChanged -= QualitySettings_activeQualityLevelChanged;
    }
}
```
