<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.SetFromToRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a rotation which rotates from `fromDirection` to `toDirection`.

Use this to create a rotation which starts at the first Vector (fromDirection) and rotates to the second Vector (toDirection). These Vectors must be set up in a script.

```csharp
//This example shows how the rotation works between two GameObjects. Attach this to a GameObject.
//Make sure to assign the GameObject you would like your GameObject to rotate towards in the Inspectorusing UnityEngine;public class SetFromToRotationExample : MonoBehaviour
{
    //This is the Transform of the second GameObject
    public Transform m_NextPoint;
    Quaternion m_MyQuaternion;
    float m_Speed = 1.0f;    void Start()
    {
        m_MyQuaternion = new Quaternion();
    }    void Update()
    {
        //Set the Quaternion rotation from the GameObject's position to the next GameObject's position
        m_MyQuaternion.SetFromToRotation(transform.position, m_NextPoint.position);
        //Move the GameObject towards the second GameObject
        transform.position = Vector3.Lerp(transform.position, m_NextPoint.position, m_Speed * Time.deltaTime);
        //Rotate the GameObject towards the second GameObject
        transform.rotation = m_MyQuaternion * transform.rotation;
    }
}
```

```csharp
//In this example your GameObject rotates towards the position of the mouseusing UnityEngine;public class Example2 : MonoBehaviour
{
    Quaternion m_MyQuaternion;
    float m_Speed = 1.0f;
    Vector3 m_MousePosition;    void Start()
    {
        m_MyQuaternion = new Quaternion();
    }    void Update()
    {
        //Fetch the mouse's position
        m_MousePosition = Input.mousePosition;
        //Fix how far into the Scene the mouse should be
        m_MousePosition.z = 50.0f;
        //Transform the mouse position into world space
        m_MousePosition = Camera.main.ScreenToWorldPoint(m_MousePosition);        //Set the Quaternion rotation from the GameObject's position to the mouse position
        m_MyQuaternion.SetFromToRotation(transform.position, m_MousePosition);
        //Move the GameObject towards the mouse position
        transform.position = Vector3.Lerp(transform.position, m_MousePosition, m_Speed * Time.deltaTime);
        //Rotate the GameObject towards the mouse position
        transform.rotation = m_MyQuaternion * transform.rotation;
    }
}
```
