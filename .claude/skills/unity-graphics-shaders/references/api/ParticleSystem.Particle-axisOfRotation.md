<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Particle-axisOfRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mesh particles rotate around this axis.

Mesh particles travel around an axis set up for each particle.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    public bool overrideAxisOfRotation;
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        if (overrideAxisOfRotation)
        {
            ParticleSystem.Particle[] particles = new ParticleSystem.Particle[ps.particleCount];
            ps.GetParticles(particles);            for (int i = 0; i < particles.Length; i++)
                particles[i].axisOfRotation = Vector3.up;            ps.SetParticles(particles, ps.particleCount);
        }
    }    private void OnGUI()
    {
        bool newValue = GUI.Toggle(new Rect(10, 10, 200, 30), overrideAxisOfRotation, new GUIContent("Override Axis of Rotation"));
        if (newValue != overrideAxisOfRotation)
        {
            ps.Clear();
            overrideAxisOfRotation = newValue;
        }
    }
}
```
