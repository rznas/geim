<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ForceMode.Acceleration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add a continuous acceleration to the rigidbody, ignoring its mass.

Apply the acceleration in each FixedUpdate over a duration of time. In contrast to ForceMode.Force, Acceleration will move every rigidbody the same way regardless of differences in mass. This mode is useful if you just want to control the acceleration of an object directly. In this mode, the unit of the force parameter is applied to the rigidbody as distance/time^2.

```csharp
using UnityEngine;public class ForceModeExample : MonoBehaviour
{
    //Use to switch between Force Modes
    enum ModeSwitching { Start, Acceleration };
    ModeSwitching m_ModeSwitching;    Vector3 m_StartPos, m_StartForce;
    Vector3 m_NewForce;
    Rigidbody m_Rigidbody;    string m_ForceXString = string.Empty;
    string m_ForceYString = string.Empty;    float m_ForceX, m_ForceY;
    float m_Result;
    void Start()
    {
        //You get the Rigidbody component you attach to the GameObject
        m_Rigidbody = GetComponent<Rigidbody>();        //This starts at first mode (nothing happening yet)
        m_ModeSwitching = ModeSwitching.Start;        //Initialising the force which is used on GameObject in various ways
        m_NewForce = new Vector3(-5.0f, 1.0f, 0.0f);        //Initialising floats
        m_ForceX = 0;
        m_ForceY = 0;        //The forces typed in from the text fields (the ones you can manipulate in Game view)
        m_ForceXString = "0";
        m_ForceYString = "0";        //The GameObject's starting position and Rigidbody position
        m_StartPos = transform.position;
        m_StartForce = m_Rigidbody.transform.position;
    }    void FixedUpdate()
    {
        //If the current mode is not the starting mode (or the GameObject is not reset), the force can change
        if (m_ModeSwitching != ModeSwitching.Start)
        {
            //The force changes depending what you input into the text fields
            m_NewForce = new Vector3(m_ForceX, m_ForceY, 0);
        }        //Here, switching modes depend on button presses in the Game mode
        switch (m_ModeSwitching)
        {
            //This is the starting mode which resets the GameObject
            case ModeSwitching.Start:
                //This resets the GameObject and Rigidbody to their starting positions
                transform.position = m_StartPos;
                m_Rigidbody.transform.position = m_StartForce;                //This resets the velocity of the Rigidbody
                m_Rigidbody.velocity = new Vector3(0f, 0f, 0f);
                break;            //These are the modes ForceMode can force on a Rigidbody
            //This is Acceleration mode
            case ModeSwitching.Acceleration:
                //The function converts the text fields into floats and updates the Rigidbody’s force
                MakeCustomForce();                //Use Acceleration as the force on the Rigidbody
                m_Rigidbody.AddForce(m_NewForce, ForceMode.Acceleration);
                break;
        }
    }    //The function outputs buttons, text fields, and other interactable UI elements to the Scene in Game view
    void OnGUI()
    {
        //Getting the inputs from each text field and storing them as strings
        m_ForceXString = GUI.TextField(new Rect(300, 10, 200, 20), m_ForceXString, 25);
        m_ForceYString = GUI.TextField(new Rect(300, 30, 200, 20), m_ForceYString, 25);        //Press the button to reset the GameObject and Rigidbody
        if (GUI.Button(new Rect(100, 0, 150, 30), "Reset"))
        {
            //This switches to the start/reset case
            m_ModeSwitching = ModeSwitching.Start;
        }        //When you press the Acceleration button, switch to Acceleration mode
        if (GUI.Button(new Rect(100, 30, 150, 30), "Apply Acceleration"))
        {
            //Switch to Acceleration (apply acceleration force to GameObject)
            m_ModeSwitching = ModeSwitching.Acceleration;
        }
    }    //Changing strings to floats for the forces
    float ConvertToFloat(string Name)
    {
        float.TryParse(Name, out m_Result);
        return m_Result;
    }    //Set the converted float from the text fields as the forces to apply to the Rigidbody
    void MakeCustomForce()
    {
        //This converts the strings to floats
        m_ForceX = ConvertToFloat(m_ForceXString);
        m_ForceY = ConvertToFloat(m_ForceYString);
    }
}
```
