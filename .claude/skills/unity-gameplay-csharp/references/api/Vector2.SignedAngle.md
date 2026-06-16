<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2.SignedAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The vector from which the angular difference is measured. |
| to | The vector to which the angular difference is measured. |

### Returns

**float** The signed angle in degrees between the two vectors.

### Description

Gets the signed angle in degrees between `from` and `to`.

The angle returned is the signed counterclockwise angle between the two vectors.
 Note: The angle returned will always be between -180 and 180 degrees, because the method returns the smallest angle between the vectors. That is, it will never return a reflex angle. Angles are calculated from world origin point (0,0,0) as the vertex.
 Additional resources: Angle function.

```csharp
using UnityEngine;public class Vector : MonoBehaviour
{
    //Use these to get the GameObject's positions
    Vector2 m_MyFirstVector;
    Vector2 m_MySecondVector;    float m_Angle;    //You must assign to these two GameObjects in the Inspector
    public GameObject m_MyObject;
    public GameObject m_MyOtherObject;    void Start()
    {
        //Initialise the Vector
        m_MyFirstVector = Vector2.zero;
        m_MySecondVector = Vector2.zero;
        m_Angle = 0.0f;
    }    void Update()
    {
        //Fetch the first GameObject's position
        m_MyFirstVector = new Vector2(m_MyObject.transform.position.x, m_MyObject.transform.position.y);
        //Fetch the second GameObject's position
        m_MySecondVector = new Vector2(m_MyOtherObject.transform.position.x, m_MyOtherObject.transform.position.y);
        //Find the angle for the two Vectors
        m_Angle = Vector2.SignedAngle(m_MyFirstVector, m_MySecondVector);        //Draw lines from origin point to Vectors
        Debug.DrawLine(Vector2.zero, m_MyFirstVector, Color.magenta);
        Debug.DrawLine(Vector2.zero, m_MySecondVector, Color.blue);        //Log values of Vectors and angle in Console
        Debug.Log("MyFirstVector: " + m_MyFirstVector);
        Debug.Log("MySecondVector: " + m_MySecondVector);
        Debug.Log("Angle Between Objects: " + m_Angle);
    }    void OnGUI()
    {
        //Output the angle found above
        GUI.Label(new Rect(25, 25, 200, 40), "Angle Between Objects" + m_Angle);
    }
}
```
