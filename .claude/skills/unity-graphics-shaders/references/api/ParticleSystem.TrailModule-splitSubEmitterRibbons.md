<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-splitSubEmitterRibbons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether, if you use this system as a sub-emitter, ribbons connect particles from each parent particle independently.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private ParticleSystem sps;
    public bool splitSubEmitterRibbons = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = new ParticleSystem.MinMaxCurve(0.01f, 1.0f);
        main.startLifetime = 1.5f;        sps = new GameObject("SubEmitter", typeof(ParticleSystem)).GetComponent<ParticleSystem>();
        sps.transform.parent = ps.transform;        var sub = ps.subEmitters;
        sub.enabled = true;
        sub.AddSubEmitter(sps, ParticleSystemSubEmitterType.Birth, ParticleSystemSubEmitterProperties.InheritColor);        var smain = sps.main;
        smain.startSpeed = 0.0f;        var sshape = sps.shape;
        sshape.enabled = false;        var strails = sps.trails;
        strails.enabled = true;
        strails.mode = ParticleSystemTrailMode.Ribbon;
        strails.widthOverTrail = 0.1f;        var spsr = sps.GetComponent<ParticleSystemRenderer>();
        spsr.renderMode = ParticleSystemRenderMode.None;
        spsr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var strails = sps.trails;
        strails.splitSubEmitterRibbons = splitSubEmitterRibbons;
    }    void OnGUI()
    {
        splitSubEmitterRibbons = GUI.Toggle(new Rect(25, 25, 200, 30), splitSubEmitterRibbons, "Split Sub Emitter Ribbons");
    }
}
```
