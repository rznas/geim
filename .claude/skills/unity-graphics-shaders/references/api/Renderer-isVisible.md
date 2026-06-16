<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-isVisible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is this renderer visible in any camera? (Read Only)

Note that the object is considered visible when it needs to be rendered in the Scene. For example, it might not actually be visible by any camera but still need to be rendered for shadows. When running in the editor, the Scene view cameras will also cause this value to be true.

Additional resources: OnBecameVisible, OnBecameInvisible.

```csharp
//Attach this script to a GameObject with a Renderer component attached
//If the GameObject is visible to the camera, the message is output to the consoleusing UnityEngine;public class IsVisible : MonoBehaviour
{
    Renderer m_Renderer;
    // Use this for initialization
    void Start()
    {
        m_Renderer = GetComponent<Renderer>();
    }    // Update is called once per frame
    void Update()
    {
        if (m_Renderer.isVisible)
        {
            Debug.Log("Object is visible");
        }
        else Debug.Log("Object is no longer visible");
    }
}
```
