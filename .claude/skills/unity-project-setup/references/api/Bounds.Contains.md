<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds.Contains.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is `point` contained in the bounding box?

If the `point` passed into Contains is inside the bounding box a value of True is returned. Points on the min and max limits (corners and edges) of the bounding box are considered inside.

**Note:** If Bounds.extents contains a negative value in any coordinate then Bounds.Contains will always return False.

```csharp
//Attach this script to a GameObject with a Collider component
//Create an empty GameObject (Create>Create Empty) and attach it in the New Transform field in the Inspector of the first GameObject
//This script tells if a point  you specify (the position of the empty GameObject) is within the first GameObject’s Colliderusing UnityEngine;public class Example : MonoBehaviour
{
    //Make sure to assign this in the Inspector window
    public Transform m_NewTransform;
    Collider m_Collider;
    Vector3 m_Point;    void Start()
    {
        //Fetch the Collider from the GameObject this script is attached to
        m_Collider = GetComponent<Collider>();
        //Assign the point to be that of the Transform you assign in the Inspector window
        m_Point = m_NewTransform.position;
    }    void Update()
    {
        //If the first GameObject's Bounds contains the Transform's position, output a message in the console
        if (m_Collider.bounds.Contains(m_Point))
        {
            Debug.Log("Bounds contain the point : " + m_Point);
        }
    }
}
```
