<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SizeBySpeedModule-separateAxes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the size by speed on each axis separately.

When disabled, only the x-axis speed curve is used.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueX = 1.0f;
    public float hSliderValueY = 1.0f;
    public float hSliderValueZ = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var sizeBySpeed = ps.sizeBySpeed;
        sizeBySpeed.enabled = true;
        sizeBySpeed.separateAxes = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.0f);
        curve.AddKey(1.0f, 1.0f);        ParticleSystem.MinMaxCurve minMaxCurve = new ParticleSystem.MinMaxCurve(1.0f, curve);        sizeBySpeed.x = minMaxCurve;
        sizeBySpeed.y = minMaxCurve;
        sizeBySpeed.z = minMaxCurve;
        sizeBySpeed.range = new Vector2(1.0f, 10.0f);        var psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));    // this material renders a square billboard, making it easier to see the size
    }    void Update()
    {
        var sizeBySpeed = ps.sizeBySpeed;
        sizeBySpeed.xMultiplier = hSliderValueX;
        sizeBySpeed.yMultiplier = hSliderValueY;
        sizeBySpeed.zMultiplier = hSliderValueZ;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "X");
        GUI.Label(new Rect(25, 80, 100, 30), "Y");
        GUI.Label(new Rect(25, 120, 100, 30), "Z");        hSliderValueX = GUI.HorizontalSlider(new Rect(55, 45, 100, 30), hSliderValueX, 1.0f, 5.0f);
        hSliderValueY = GUI.HorizontalSlider(new Rect(55, 85, 100, 30), hSliderValueY, 1.0f, 5.0f);
        hSliderValueZ = GUI.HorizontalSlider(new Rect(55, 125, 100, 30), hSliderValueZ, 1.0f, 5.0f);
    }
}
```
