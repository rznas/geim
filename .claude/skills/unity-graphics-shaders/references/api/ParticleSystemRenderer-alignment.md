<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-alignment.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control the direction that particles face.

For many applications, it is beneficial for particles to always face the Camera. This property allows you to change whether particles in the system face the Camera or not.

Particles can face the Camera in two ways:

1) Aligned to the Camera plane, so that all particles are aligned with the same facing direction.
 2) Aligned individually to face the eye position, which can be more convincing for particles that approach the Camera in close proximity or for VR environments.

Unaligned particles can be set to align to the world or to their local transform, as required.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    private ParticleSystem ps;
    private ParticleSystemRenderer psr;
    public ParticleSystemRenderSpace alignment = ParticleSystemRenderSpace.View;    void Start() {        Camera.main.transform.rotation = Quaternion.Euler(0.0f, 20.0f, 0.0f);   // rotate the camera so we can see the difference between view and world space        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        var main = ps.main;
        main.startSpeed = 2.0f;        psr.material = new Material(Shader.Find("Sprites/Default"));
    }    void Update() {
        psr.alignment = alignment;
    }    void OnGUI() {
        alignment = (ParticleSystemRenderSpace)GUI.SelectionGrid(new Rect(25, 25, 300, 30), (int)alignment, new GUIContent[] { new GUIContent("View"), new GUIContent("World"), new GUIContent("Local"), new GUIContent("Facing") }, 4);
    }
}
```
