<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Space.Self.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The local coordinate system of a GameObject relative to its parent, including orientation.

Use `Space.Self` to transform a GameObject relative to its Transform.localPosition and its own local axes, taking its orientation into account. For example, `Transform.Translate(Vector3.forward, Space.Self)` adds one unit to the object's Transform.localPosition on the z-axis of the object, which may differ from the z-axis of the scene depending on the object's orientation.

 To transform a GameObject relative to its Transform.position and along the scene axes, use Space.World.

```csharp
//Attach this script to a GameObject.
//This example demonstrates the difference between Space.World and Space.Self in rotation.
//The m_WorldSpace field will be automatically exposed as a checkbox in the Inspector window labelled World Space. Enable or disable the checkbox in the Inspector to start in world or self respectively.
//Press play to see the GameObject rotating appropriately. Press space or toggle the World Space checkbox to switch between World and Self.using UnityEngine;public class Example : MonoBehaviour
{
    float m_Speed;
    public bool m_WorldSpace;    void Start()
    {
        //Set the speed of the rotation
        m_Speed = 20.0f;
        //Rotate the GameObject a little at the start to show the difference between Space and Local
        transform.Rotate(60, 0, 60);
    }    void Update()
    {
        //Rotate the GameObject in World Space if in the m_WorldSpace state
        if (m_WorldSpace)
            transform.Rotate(Vector3.up * m_Speed * Time.deltaTime, Space.World);
        //Otherwise, rotate the GameObject in local space
        else
            transform.Rotate(Vector3.up * m_Speed * Time.deltaTime, Space.Self);        //Press the Space button to switch between world and local space states
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //Make the current state switch to the other state
            m_WorldSpace = !m_WorldSpace;
            //Output the Current state to the console
            Debug.Log("World Space : " + m_WorldSpace.ToString());
        }
    }
}
```
