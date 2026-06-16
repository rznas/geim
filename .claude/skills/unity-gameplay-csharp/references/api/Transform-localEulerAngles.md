<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-localEulerAngles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotation as Euler angles in degrees relative to the parent transform's rotation.

Euler angles can represent a three dimensional rotation by performing three separate rotations around individual axes. In Unity these rotations are performed around the Z axis, the X axis, and the Y axis, in that order. 
 
You can set the rotation of a Quaternion by setting this property, and you can read the Euler angle values by reading this property. 
 
 When using the .eulerAngles property to set a rotation, it is important to understand that although you are providing X, Y, and Z rotation values to describe your rotation, those values are not stored in the rotation. Instead, the X, Y & Z values are converted to the Quaternion's internal format.
 
When you read the .eulerAngles property, Unity converts the Quaternion's internal representation of the rotation to Euler angles. Because, there is more than one way to represent any given rotation using Euler angles, the values you read back out may be quite different from the values you assigned. This can cause confusion if you are trying to gradually increment the values to produce animation. 
 
 To avoid these kinds of problems, the recommended way to work with rotations is to avoid relying on consistent results when reading .eulerAngles particularly when attempting to gradually increment a rotation to produce animation. For better ways to achieve this, see the Quaternion * operator. 
 
 The following example demonstrates the rotation of a GameObject using eulerAngles based on the Input of the user. The example shows that we never rely on reading the Quanternion.eulerAngles to increment the rotation, instead we set it using our Vector3 currentEulerAngles. All rotational changes happen in the currentEulerAngles variable, which are then applied to the Quaternion avoiding the problem mentioned above.

```csharp
using UnityEngine;
public class ExampleScript : MonoBehaviour
{
    float rotationSpeed = 45;
    Vector3 currentEulerAngles;
    float x;
    float y;
    float z;    void Update()
    {
        if (Input.GetKeyDown(KeyCode.X)) x = 1 - x;
        if (Input.GetKeyDown(KeyCode.Y)) y = 1 - y;
        if (Input.GetKeyDown(KeyCode.Z)) z = 1 - z;
    
        //modifying the Vector3, based on input multiplied by speed and time
        currentEulerAngles += new Vector3(x, y, z) * Time.deltaTime * rotationSpeed;
    
        //apply the change to the gameObject
        transform.localEulerAngles = currentEulerAngles;
    }    void OnGUI()
    {
        GUIStyle style = new GUIStyle();
        style.fontSize = 24;
        GUI.Label(new Rect(10, 0, 0, 0), "Rotating on X:" + x + " Y:" + y + " Z:" + z, style);        GUI.Label(new Rect(10, 50, 0, 0), "Transform.localEulerAngle: " + transform.localEulerAngles, style);
    }
}
```

Unity automatically converts the angles to and from the rotation stored in Transform.localRotation.
