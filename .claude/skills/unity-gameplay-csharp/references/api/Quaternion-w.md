<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion-w.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

W component of the Quaternion. Do not directly modify quaternions.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// Quaternion-w script example
// Create a Sphere and apply a texture to help the orientation be recognised.
// At each second the sphere is rotated and the quaternion is displayed.public class ExampleClass : MonoBehaviour
{
    private float timeDelay = 0.0f;
    private Quaternion q;
    private string label = "";    void Awake()
    {
        // Add a line that passes through the y axis of the sphere and make
        // the line as a child.
        GameObject line = GameObject.CreatePrimitive(PrimitiveType.Cube);
        line.transform.localScale = new Vector3(0.05f, 1.5f, 0.05f);
        line.transform.parent = gameObject.transform;
    }    void Update()
    {
        if (timeDelay > 1.0f)
        {
            Vector3 v;            // generate a random euler angle
            v.x = Random.Range(0.0f, 360.0f);
            v.y = Random.Range(0.0f, 360.0f);
            v.z = Random.Range(0.0f, 360.0f);            // convert the euler into a quaternion
            q = Quaternion.Euler(v);            // and apply it to the sphere
            transform.rotation = q;            // generate a string
            label = q.ToString("f3");            // and start another 1 second delay
            timeDelay = 0.0f;
        }
        timeDelay += Time.deltaTime;
    }    // display the quaternion as a string
    void OnGUI()
    {
        GUI.skin.label.fixedHeight = 40;
        GUI.skin.label.fontSize = 24;
        GUI.Label(new Rect(10, 10, 400, 30), label);
    }
}
```
