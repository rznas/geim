<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ExternalForcesModule.RemoveAllInfluences.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes every Force Field from the influencers list.

When influenceFilter is set to ParticleSystemGameObjectFilter.List then only Force Fields in the influencers list affect the Particle System.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    ParticleSystem.ExternalForcesModule externalForcesModule;    void Start()
    {
        // Create a default particle system
        var particleSystemGameObject = new GameObject("Particle System");
        var system = particleSystemGameObject.AddComponent<ParticleSystem>();        // Create a force field to influence the particle system
        var forceFieldGameObject = new GameObject("Force Field");
        var forceField = forceFieldGameObject.AddComponent<ParticleSystemForceField>();
        forceField.endRange = 5;
        forceFieldGameObject.transform.position = new Vector3(0, 0, 10);        // Add the force to the particle systems external forces influencers.
        externalForcesModule = system.externalForces;
        externalForcesModule.enabled = true;
        externalForcesModule.influenceFilter = ParticleSystemGameObjectFilter.List;
        externalForcesModule.AddInfluence(forceField);
    }    void OnGUI()
    {
        if (GUILayout.Button("Remove All"))
        {
            externalForcesModule.RemoveAllInfluences();
        }
    }
}
```
