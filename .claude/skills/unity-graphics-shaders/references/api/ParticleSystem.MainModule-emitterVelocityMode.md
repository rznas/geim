<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-emitterVelocityMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control how the Particle System calculates its velocity, when moving in the world.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public ParticleSystemEmitterVelocityMode velocityMode;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var main = ps.main;
        main.emitterVelocityMode = velocityMode;
    }    void OnGUI()
    {
        velocityMode = (ParticleSystemEmitterVelocityMode)GUI.SelectionGrid(new Rect(25, 25, 300, 30), (int)velocityMode, new GUIContent[] { new GUIContent("Transform"), new GUIContent("Rigidbody") }, 2);
    }
}
```
