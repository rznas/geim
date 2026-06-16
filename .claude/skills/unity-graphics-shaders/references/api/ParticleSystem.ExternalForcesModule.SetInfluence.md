<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ExternalForcesModule.SetInfluence.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index to assign the Force Field. |
| field | Force Field that to assign. |

### Description

Assigns the Force Field at the given index in the influencers list.

When influenceFilter is set to ParticleSystemGameObjectFilter.List then only Force Fields in the influencers list affect the Particle System.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public ParticleSystem system;
    public ParticleSystemForceField field1;
    public ParticleSystemForceField field2;    ParticleSystem.ExternalForcesModule m_ExternalForcesModule;    void Start()
    {
        if (system == null)
        {
            Debug.LogError("Please assign a Particle System to `system`.");
            enabled = false;
            return;
        }        if (field1 == null || field2 == null)
        {
            Debug.LogError("Please assign a ParticleSystemForceField to `field1` and `field2`.");
            enabled = false;
            return;
        }        m_ExternalForcesModule = system.externalForces;
        m_ExternalForcesModule.enabled = true;
        m_ExternalForcesModule.influenceFilter = ParticleSystemGameObjectFilter.List;
        m_ExternalForcesModule.AddInfluence(field1);
    }    void OnGUI()
    {
        Debug.Assert(m_ExternalForcesModule.influenceCount == 1);
        var currentForceField = m_ExternalForcesModule.GetInfluence(0);        GUILayout.BeginHorizontal();
        GUILayout.Label("Influence: " + currentForceField.name);        if (GUILayout.Button("Toggle"))
        {
            m_ExternalForcesModule.SetInfluence(0, currentForceField == field1 ? field2 : field1);
        }        GUILayout.EndHorizontal();
    }
}
```
