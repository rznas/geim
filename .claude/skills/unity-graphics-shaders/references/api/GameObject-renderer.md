<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-renderer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Renderer attached to this GameObject (Read Only). (Null if there is none attached).

GameObject.renderer is obsolete. Instead you should use GetComponent<Renderer>() to access the Renderer component of a GameObject.

Access the Renderer component of a GameObject to read or manipulate the GameObject’s Material, visibility, shadow reception and perform various other useful effects to the GameObject’s appearance.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Renderer m_ObjectRenderer;    void Start()
    {
        //Fetch the GameObject's Renderer component
        m_ObjectRenderer = GetComponent<Renderer>();
        //Change the GameObject's Material Color to red
        m_ObjectRenderer.material.color = Color.red;
    }
}
```
