<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RequireComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The RequireComponent attribute automatically adds required components as dependencies.

When you add a script which uses RequireComponent to a GameObject, the required component is automatically added to the GameObject. This is useful to avoid setup errors. For example a script might require that a Rigidbody is always added to the same GameObject. When you use RequireComponent, this is done automatically, so you are unlikely to get the setup wrong.

**Note:** RequireComponent only checks for missing dependencies when GameObject.AddComponent is called. This happens both in the Editor, or at runtime. Unity does not automatically add any missing dependences to the components with GameObjects that lack the new dependencies.

```csharp
using UnityEngine;// PlayerScript requires the GameObject to have a Rigidbody component
[RequireComponent(typeof(Rigidbody))]
public class PlayerScript : MonoBehaviour
{
    Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void FixedUpdate()
    {
        rb.AddForce(Vector3.up);
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| RequireComponent | Require a single component. |
