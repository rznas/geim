<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startRotation3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A flag to enable 3D particle rotation.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueX = 0.0F;
    public float hSliderValueY = 0.0F;
    public float hSliderValueZ = 0.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startRotation3D = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));    // this material renders a square billboard, so we can see the rotation
    }    void Update()
    {
        var main = ps.main;
        main.startRotationXMultiplier = hSliderValueX;
        main.startRotationYMultiplier = hSliderValueY;
        main.startRotationZMultiplier = hSliderValueZ;
    }    void OnGUI()
    {
        hSliderValueX = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValueX, 0.0F, 360.0F * Mathf.Deg2Rad);
        hSliderValueY = GUI.HorizontalSlider(new Rect(25, 75, 100, 30), hSliderValueY, 0.0F, 360.0F * Mathf.Deg2Rad);
        hSliderValueZ = GUI.HorizontalSlider(new Rect(25, 105, 100, 30), hSliderValueZ, 0.0F, 360.0F * Mathf.Deg2Rad);
    }
}
```
