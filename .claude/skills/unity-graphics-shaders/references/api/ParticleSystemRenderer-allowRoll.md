<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-allowRoll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allow billboard particles to roll around their z-axis.

Allows billboards to roll with the Camera. It is often useful to disable this option when using VR, to give particles a more believable grounding in the world.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{    private ParticleSystemRenderer psr;
    public bool allowRoll = true;    void Start()
    {
        psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var psr = GetComponent<ParticleSystemRenderer>();
        psr.allowRoll = allowRoll;        Camera.main.transform.rotation = Quaternion.Euler(0.0f, 0.0f, Mathf.Sin(Time.time * 0.2f) * 90.0f);
    }    void OnGUI()
    {
        allowRoll = GUI.Toggle(new Rect(25, 45, 200, 30), allowRoll, "Allow Roll");
    }
}
```
