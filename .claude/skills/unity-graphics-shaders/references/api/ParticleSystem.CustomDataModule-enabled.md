<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CustomDataModule-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether the CustomDataModule is enabled or disabled.

Additional resources: ParticleSystem.customData.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool moduleEnabled;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var customData = ps.customData;
        customData.enabled = moduleEnabled;
    }    void OnGUI()
    {
        moduleEnabled = GUI.Toggle(new Rect(25, 45, 100, 30), moduleEnabled, "Enabled");
    }
}
```
