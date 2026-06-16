<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-x.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

X component of the vector.

Use this to modify or return the X component of a vector.

```csharp
// This script moves a GameObject to a new x position using Vector3.x.
// Attach this script to a GameObject
// Set your x position in the Inspectorusing UnityEngine;public class Examples : MonoBehaviour
{
    Vector3 m_NewPosition;
    // This is the new X position. Set it in the Inspector.
    public float m_XPosition;    // Use this for initialization
    void Start()
    {
        // Initialise the vector
        m_NewPosition = new Vector3(0.0f, 0.0f, 0.0f);
    }    void Update()
    {
        // Press the space key to change the x component of the vector
        if (Input.GetKeyDown(KeyCode.Space))
        {
            m_NewPosition.x = m_XPosition;
        }
        // Change the position depending on the vector
        transform.position = m_NewPosition;
    }
}
```

Below is another example that allows you to manipulate the GameObject’s x and y positions. Just type an x and y position in the Input Fields in Play Mode.

```csharp
// Attach this script to a GameObject
// Create two Input Fields in the Scene (Create>UI>Input Field)
// Click on the GameObject and attach both Input Fields in the Inspector windowusing UnityEngine;
using UnityEngine.UI;public class ExampleClass : MonoBehaviour
{
    Vector3 m_NewPosition;    // Attach these in the Inspector window
    public InputField m_InputFieldX, m_InputFieldY;    // These are the strings that are returned from the InputFields
    string xString, yString;    // These are used when converting the strings to floats
    float m_XValue, m_YValue;    // Use this for initialization
    void Start()
    {
        // Initialise the vector
        m_NewPosition = new Vector3(0.0f, 0.0f, 0.0f);
    }    void Update()
    {
        // Store the inputs from the InputFields as strings
        xString = m_InputFieldX.text;
        yString = m_InputFieldY.text;        // Convert the strings from the InputFields to floats
        ConvertStringsToFloats(xString, yString);        // Change the NewPosition Vector's x and y components
        m_NewPosition.x = m_XValue;
        m_NewPosition.y = m_YValue;        // Change the position depending on the vector
        transform.position = m_NewPosition;
    }    void ConvertStringsToFloats(string XVal, string YVal)
    {
        try
        {
            // Convert the strings to floats
            m_XValue = float.Parse(XVal);
            m_YValue = float.Parse(YVal);
        }
        catch{}
    }
}
```
