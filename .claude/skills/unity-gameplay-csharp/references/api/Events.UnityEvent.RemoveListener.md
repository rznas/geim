<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityEvent.RemoveListener.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| call | The callback function to remove. |

### Description

Removes a runtime listener from the UnityEvent.

This method removes all occurrences of the specified listener from the UnityEvent. If you have added the same listener multiple times, this method will remove all occurrences of it. Use this to clean up listeners and avoid unintended callbacks.

```csharp
//Attach this script to a GameObject
//This script creates a UnityEvent that calls a method when a key is pressed
//Note that 'q' exits this application.
using UnityEngine;
using UnityEngine.Events;public class Example : MonoBehaviour
{
    UnityEvent m_MyEvent = new UnityEvent();    void Start()
    {
        //Add a listener to the new Event. Calls OnKeyPressed method when invoked
        m_MyEvent.AddListener(OnKeyPressed);
    }    void Update()
    {
        // Press Q to close the Listener
        if (Input.GetKeyDown("q") && m_MyEvent != null)
        {
            Debug.Log("Quitting");
            //Remove the OnKeyPressed callback from the UnityEvent.
            m_MyEvent.RemoveListener(OnKeyPressed);            #if UNITY_EDITOR
            UnityEditor.EditorApplication.isPlaying = false;
            #endif            Application.Quit();
        }        //Press any other key to begin the action if the Event exists
        if (Input.anyKeyDown && m_MyEvent != null)
        {
            //Begin the action
            m_MyEvent.Invoke();
        }
    }    void OnKeyPressed()
    {
        //Output message to the console
        Debug.Log("Q key pressed");
    }
}
```
