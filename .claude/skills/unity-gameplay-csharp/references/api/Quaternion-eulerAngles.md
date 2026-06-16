<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion-eulerAngles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns or sets the euler angle representation of the rotation in degrees.

Euler angles can represent a three dimensional rotation by performing three separate rotations around individual axes. In Unity these rotations are performed around the Z axis, the X axis, and the Y axis, in that order. 
 
You can set the rotation of a Quaternion by setting this property, and you can read the Euler angle values by reading this property. 
 
 When using the .eulerAngles property to set a rotation, it is important to understand that although you are providing X, Y, and Z rotation values to describe your rotation, those values are not stored in the rotation. Instead, the X, Y & Z values are converted to the Quaternion's internal format.
 
When you read the .eulerAngles property, Unity converts the Quaternion's internal representation of the rotation to Euler angles. Because, there is more than one way to represent any given rotation using Euler angles, the values you read back out may be quite different from the values you assigned. This can cause confusion if you are trying to gradually increment the values to produce animation. See bottom scripting example for more information. 
 
 To avoid these kinds of problems, the recommended way to work with rotations is to avoid relying on consistent results when reading .eulerAngles particularly when attempting to gradually increment a rotation to produce animation. For better ways to achieve this, see the Quaternion * operator. 
 
 The following example demonstrates the rotation of a GameObject using eulerAngles based on the Input of the user. The example shows that we never rely on reading the Quanternion.eulerAngles to increment the rotation, instead we set it using our Vector3 currentEulerAngles. All rotational changes happen in the currentEulerAngles variable, which are then applied to the Quaternion avoiding the problem mentioned above.

```csharp
using UnityEngine;public class DocsEulerAngles : MonoBehaviour
{
    float rotationSpeed = 45;
    Vector3 currentEulerAngles;
    Quaternion currentRotation;
    float x;
    float y;
    float z;    void Start()
    {
        // Initialize the quaternion to identity
        currentRotation = Quaternion.identity;
        currentEulerAngles = Vector3.zero;
    }    void Update()
    {
        if (Input.GetKeyDown(KeyCode.X)) x = 1 - x;
        if (Input.GetKeyDown(KeyCode.Y)) y = 1 - y;
        if (Input.GetKeyDown(KeyCode.Z)) z = 1 - z;        //modifying the Vector3, based on input multiplied by speed and time
        currentEulerAngles += new Vector3(x, y, z) * Time.deltaTime * rotationSpeed;        //creating a new Quaternion from the updated euler angles
        currentRotation = Quaternion.Euler(currentEulerAngles);        // set the rotation of the gameObject
        transform.rotation = currentRotation;
    }    void OnGUI()
    {
        GUIStyle style = new GUIStyle();
        style.fontSize = 18;
        style.normal.textColor = Color.white;
        
        GUI.Label(new Rect(10, 0, 500, 25), "Press X, Y, Z keys to toggle rotation on each axis", style);
        GUI.Label(new Rect(10, 25, 500, 25), "Rotating on X:" + x + " Y:" + y + " Z:" + z, style);        // Show our accumulated euler angles (what we're setting)
        GUI.Label(new Rect(10, 50, 500, 25), "Accumulated Euler angles: " + currentEulerAngles.ToString("F1"), style);        // Use eulerAngles to show the euler angles of the quaternion stored in currentRotation
        GUI.Label(new Rect(10, 75, 500, 25), "Quaternion.eulerAngles: " + currentRotation.eulerAngles.ToString("F1"), style);        // Show the transform.eulerAngles of the GameObject (should match currentRotation.eulerAngles)
        GUI.Label(new Rect(10, 100, 500, 25), "Transform.eulerAngles: " + transform.eulerAngles.ToString("F1"), style);
        
        // Show the actual quaternion values for reference
        GUI.Label(new Rect(10, 125, 500, 25), "Quaternion (x,y,z,w): " + currentRotation.ToString("F3"), style);
    }
}
```

The following example demonstrates how the values you read out of .eulerAngles may be quite different from the values you assign, even though they represent the same rotation.

```csharp
using UnityEngine;// demonstration of eulerAngles not returning the same values as assigned
public class EulerAnglesProblemExample : MonoBehaviour
{
    private void Start()
    {
        Quaternion myRotation = Quaternion.identity;
        myRotation.eulerAngles = new Vector3(150, 35, 45);        Debug.Log(myRotation.eulerAngles);        // output is: (30.0, 215.0, 225.0)
    }
}
```
