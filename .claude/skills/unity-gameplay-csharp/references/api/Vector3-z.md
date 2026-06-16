<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-z.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Z component of the vector.

```csharp
// Attach this script to a GameObject
// Create two Input Fields in the Scene (Create>UI>Input Field)
// Click on the GameObject and attach both Input Fields in the Inspector windowusing UnityEngine;
using UnityEngine.UI;public class ExampleClass : MonoBehaviour
{
    Vector3 m_NewPosition;    // Attach these in the Inspector window
    public InputField m_InputFieldX, m_InputFieldY, m_InputFieldZ;    // These are the strings that are returned from the InputFields
    string xString, yString, zString;    // These are used when converting the strings to floats
    float m_XValue, m_YValue, m_ZValue;    // Use this for initialization
    void Start()
    {
        // Initialise the vector
        m_NewPosition = new Vector3(0.0f, 0.0f, 0.0f);
    }    void Update()
    {
        // Store the inputs from the InputFields as strings
        xString = m_InputFieldX.text;
        yString = m_InputFieldY.text;
        zString = m_InputFieldZ.text;        // Convert the strings from the InputFields to floats
        ConvertStringsToFloats(xString, yString, zString);        // Change the NewPosition Vector's x and y components
        m_NewPosition.x = m_XValue;
        m_NewPosition.y = m_YValue;
        m_NewPosition.z = m_ZValue;        // Change the position depending on the vector
        transform.position = m_NewPosition;
    }    void ConvertStringsToFloats(string XVal, string YVal, string ZVal)
    {
        try
        {
            // Convert the strings to floats
            m_XValue = float.Parse(XVal);
            m_YValue = float.Parse(YVal);
            m_ZValue = float.Parse(ZVal);
        }
        catch{}
    }
}
```
