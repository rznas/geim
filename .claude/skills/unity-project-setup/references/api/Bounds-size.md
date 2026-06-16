<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds-size.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total size of the box. This is always twice as large as the extents.

*size.x* is the width, *size.y* is the height and *size.z* is the depth of the box. Note that *size* is given in world size. A Bound surrounding a tall human might have *size.y* approximately 2.0f, meaning a 2 meter height body.

```csharp
//This script outputs the size of the Collider bounds to the consoleusing UnityEngine;public class Example : MonoBehaviour
{
    Collider m_Collider;
    Vector3 m_Size;    void Start()
    {
        //Fetch the Collider from the GameObject
        m_Collider = GetComponent<Collider>();        //Fetch the size of the Collider volume
        m_Size = m_Collider.bounds.size;        //Output to the console the size of the Collider volume
        Debug.Log("Collider Size : " + m_Size);
    }
}
```
