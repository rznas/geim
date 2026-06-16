<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Zero argument delegate used by UnityEvents.

Use this to create some dynamic functionality in your scripts. Unity Actions allow you to dynamically call multiple functions. Since Unity Actions have no arguments, functions they call must also have no arguments. See [Delegates](https://unity3d.com/learn/tutorials/topics/scripting/delegates) for more information.

```csharp
//Attach this script to a GameObject. Attach a Renderer and Button component to the same GameObject for this example.
//This script will change the Color of the GameObject as well as output messages to the Console saying which function was run by the UnityAction.using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;public class UnityActionExample : MonoBehaviour
{
    //This is the Button you attach to the GameObject in the Inspector
    Button m_AddButton;
    Renderer m_Renderer;    private UnityAction m_MyFirstAction;
    //This is the number that the script updates
    float m_MyNumber;    void Start()
    {
        //Fetch the Button and Renderer components from the GameObject
        m_AddButton = GetComponent<Button>();
        m_Renderer = GetComponent<Renderer>();        //Make a Unity Action that calls your function
        m_MyFirstAction += MyFunction;
        //Make the Unity Action also call your second function
        m_MyFirstAction += MySecondFunction;
        //Register the Button to detect clicks and call your Unity Action
        m_AddButton.onClick.AddListener(m_MyFirstAction);
    }    void MyFunction()
    {
        //Add to the number
        m_MyNumber++;
        //Display the number so far with the message
        Debug.Log("First Added : " + m_MyNumber);
    }    void MySecondFunction()
    {
        //Change the Color of the GameObject
        m_Renderer.material.color = Color.blue;
        //Ouput the message that the second function was played
        Debug.Log("Second Added");
    }
}
```
