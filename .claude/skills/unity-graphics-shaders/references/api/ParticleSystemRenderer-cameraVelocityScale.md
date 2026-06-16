<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-cameraVelocityScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How much do the particles stretch depending on the Camera's speed.

Use this to make particles become larger if the viewing Camera has a large speed.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    private ParticleSystem ps;
    private ParticleSystemRenderer psr;
    public ParticleSystemRenderMode renderMode = ParticleSystemRenderMode.Billboard;
    public float cameraScale = 0.0f;
    public float lengthScale = 0.0f;
    public float velocityScale = 1.0f;    void Start() {        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        psr.mesh = Resources.GetBuiltinResource<Mesh>("Capsule.fbx");        var main = ps.main;
        main.startSpeed = new ParticleSystem.MinMaxCurve(0.5f, 1.5f);
        main.startSize = new ParticleSystem.MinMaxCurve(0.1f, 0.8f);
    }    void Update() {
        psr.renderMode = renderMode;
        psr.cameraVelocityScale = cameraScale;
        psr.lengthScale = lengthScale;
        psr.velocityScale = velocityScale;        if (renderMode == ParticleSystemRenderMode.Stretch)
            Camera.main.transform.position = new Vector3(Mathf.Sin(Time.time) * 4.0f, 0.0f, -10.0f);    // move the camera so we can see the effect on stretch camera velocity
    }    void OnGUI() {
        renderMode = (ParticleSystemRenderMode)GUI.SelectionGrid(new Rect(25, 25, 900, 30), (int)renderMode, new GUIContent[] { new GUIContent("Billboard"), new GUIContent("Stretch"), new GUIContent("HorizontalBillboard"), new GUIContent("VerticalBillboard"), new GUIContent("Mesh"), new GUIContent("None") }, 6);        if (renderMode == ParticleSystemRenderMode.Stretch) {            GUI.Label(new Rect(25, 80, 100, 30), "Camera Scale");
            GUI.Label(new Rect(25, 120, 100, 30), "Length Scale");
            GUI.Label(new Rect(25, 160, 100, 30), "Velocity Scale");            cameraScale = GUI.HorizontalSlider(new Rect(125, 85, 100, 30), cameraScale, 0.0f, 10.0f);
            lengthScale = GUI.HorizontalSlider(new Rect(125, 125, 100, 30), lengthScale, 0.0f, 10.0f);
            velocityScale = GUI.HorizontalSlider(new Rect(125, 165, 100, 30), velocityScale, 0.0f, 10.0f);
        }
    }
}
```
