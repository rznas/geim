<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LimitVelocityOverLifetimeModule-multiplyDragByParticleSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adjust the amount of drag this module applies to particles, based on their sizes.

Additional resources: ParticleSystem.LimitVelocityOverLifetimeModule.drag, ParticleSystem.LimitVelocityOverLifetimeModule.multiplyDragByParticleVelocity.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueDrag = 1.0f;
    public bool hToggleUseSize = false;
    public bool hToggleUseVelocity = false;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var limitVelocityOverLifetime = ps.limitVelocityOverLifetime;
        limitVelocityOverLifetime.enabled = true;        var main = ps.main;
        main.startSize = new ParticleSystem.MinMaxCurve(0.1f, 1.5f);
        main.startSpeed = new ParticleSystem.MinMaxCurve(0.5f, 5.0f);
    }    void Update()
    {
        var limitVelocityOverLifetime = ps.limitVelocityOverLifetime;
        limitVelocityOverLifetime.dragMultiplier = hSliderValueDrag;
        limitVelocityOverLifetime.multiplyDragByParticleSize = hToggleUseSize;
        limitVelocityOverLifetime.multiplyDragByParticleVelocity = hToggleUseVelocity;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Drag");        hSliderValueDrag = GUI.HorizontalSlider(new Rect(135, 45, 100, 30), hSliderValueDrag, 0.0f, 3.0f);
        hToggleUseSize = GUI.Toggle(new Rect(25, 85, 200, 30), hToggleUseSize, "Multiply by Size");
        hToggleUseVelocity = GUI.Toggle(new Rect(25, 125, 200, 30), hToggleUseVelocity, "Multiply by Velocity");
    }
}
```
