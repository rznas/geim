<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enabled Colliders will collide with other Colliders, disabled Colliders won't.

This is shown as the small checkbox in the inspector of the Colliders. It decides if a GameObject can collide with other Colliders.

```csharp
//This example enables and disables the GameObject's Collider when the space bar is pressed.
//Attach this to a GameObject and attach a Collider to the GameObjectusing UnityEngine;
using UnityEngine.InputSystem;
                        
public class ColliderEnabled : MonoBehaviour
{
    Collider m_Collider;    void Start()
    {
        //Fetch the GameObject's Collider (make sure it has a Collider component)
        m_Collider = GetComponent<Collider>();
    }    void Update()
    {
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
        {
            //Toggle the Collider on and off when pressing the space bar
            m_Collider.enabled = !m_Collider.enabled;            //Output to console whether the Collider is on or not
            Debug.Log("Collider.enabled = " + m_Collider.enabled);
        }
    }
}
```
