<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.DeleteAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes all keys and values from the preferences. Use with caution.

Call this function in a script to delete all current settings in the PlayerPrefs.

The following example demonstrates creating a button that deletes all PlayerPrefs.

```csharp
//This example creates a button on the screen that deletes any PlayerPrefs settings when you press it.
//Note that you must set values or keys in the PlayerPrefs first to see the button.using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        //Delete all of the PlayerPrefs settings by pressing this button.
        if (GUI.Button(new Rect(100, 200, 200, 60), "Delete"))
        {
            PlayerPrefs.DeleteAll();
        }
    }
}
```

The following example demonstrates setting PlayerPrefs and deleting them afterwards.

```csharp
//First attach this script to a GameObject in the Scene to set up the PlayerPrefs.using UnityEngine;
using UnityEngine.SceneManagement;public class SetUpPlayerPrefsExample : MonoBehaviour
{
    string m_PlayerName;    void Start()
    {
        m_PlayerName = "Enter Your Name";
    }    void Update()
    {
        //Give the PlayerPrefs some values to send over to the next Scene
        PlayerPrefs.SetFloat("Health", 50.0F);
        PlayerPrefs.SetInt("Score", 20);
        PlayerPrefs.SetString("Name", m_PlayerName);
    }    void OnGUI()
    {
        //Create a Text Field where the user inputs their name
        m_PlayerName = GUI.TextField(new Rect(10, 10, 200, 20), m_PlayerName, 25);        //Create a button which loads the appropriate level when you press it
        if (GUI.Button(new Rect(10, 30, 200, 60), "Next Scene"))
        {
            SceneManager.LoadScene("Scene2");
        }
    }
}
```

```csharp
//This other script shows how the values of the PlayerPrefs reset using the PlayerPrefs.DeleteAll() function.
//Open a different Scene (the one you named before- "Scene2") and attach this script to a new GameObject.
//Use this script to fetch the settings and show them as text on the screen.
//Use the button included in the script to delete all these settings and the text on the screen will also reset to reflect this.using UnityEngine;
using UnityEngine.UI;public class PlayerPrefsDeleteAllExample : MonoBehaviour
{
    int m_Score;
    float m_Health;
    string m_PlayerName;    void Start()
    {
        //Fetch the PlayerPref settings
        SetText();
    }    void SetText()
    {
        //Fetch the score, health and name from the PlayerPrefs (set these Playerprefs in another script)
        m_Health = PlayerPrefs.GetFloat("Health", 0);
        m_Score = PlayerPrefs.GetInt("Score", 0);
        m_PlayerName = PlayerPrefs.GetString("Name", "No Name");
    }    void OnGUI()
    {
        //Fetch the PlayerPrefs settings and output them to the screen using Labels
        GUI.Label(new Rect(50, 50, 200, 30), "Name : " + m_PlayerName);
        GUI.Label(new Rect(50, 90, 200, 30), "Health : " + m_Health);
        GUI.Label(new Rect(50, 130, 200, 30), "Score : " + m_Score);        //Delete all of the PlayerPrefs settings by pressing this Button
        if (GUI.Button(new Rect(50, 0, 100, 30), "Delete"))
        {
            PlayerPrefs.DeleteAll();
            //Fetch the updated settings to change the Text
            SetText();
        }
    }
}
```
