<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-freezeRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether physics will change the rotation of the object.

If freezeRotation is enabled, the rotation is not modified by the physics simulation. This is useful for creating first person shooters, because the player needs full control of the rotation using the mouse. Additional resources: Rigidbody.constraints.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Rigidbody m_Rigidbody;    private void Start()
    {
        //Fetch the Rigidbody from the GameObject with this script attached
        m_Rigidbody = GetComponent<Rigidbody>();
        //Stop the Rigidbody from rotating
        m_Rigidbody.freezeRotation = true;
    }
}
```
