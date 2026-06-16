<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-timeSinceLevelLoad.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The time in seconds since the last non-additive scene finished loading (Read Only).

This behaves in the same way as Time.time with a negative offset. `Time.timeSinceLevelLoad` increases based on scaled time (the same clock as Time.time). For example, if you set Time.timeScale to `0.5f`, it advances at half speed, and if you set Time.timeScale to `0f` (pause), it stops increasing.

 For greater precision, use Time.timeSinceLevelLoadAsDouble instead.

```csharp
//Attach this script to a GameObject
//Create a Button (Create>UI>Button) and a Text GameObject (Create>UI>Text)
//Click on the GameObject and attach the Button and Text in the fields in the Inspector//This script outputs the time since the last level load. It also allows you to load a new Scene by pressing the Button. When this new Scene loads, the time resets and updates.using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;public class TimeSinceLevelLoad : MonoBehaviour
{
    public Button m_MyButton;
    public Text m_MyText;    void Awake()
    {
        // Don't destroy the GameObject when loading a new Scene
        DontDestroyOnLoad(gameObject);
        // Make sure the Canvas isn't deleted so the UI stays on the Scene load
        DontDestroyOnLoad(GameObject.Find("Canvas"));        if (m_MyButton != null)
            // Add a listener to call the LoadSceneButton function when the Button is clicked
            m_MyButton.onClick.AddListener(LoadSceneButton);
    }    void Update()
    {
        // Output the time since the Scene loaded to the screen using this label
        m_MyText.text = "Time Since Loaded : " + Time.timeSinceLevelLoad;
    }    void LoadSceneButton()
    {
        // Press this Button to load another Scene
        // Load the Scene named "Scene2"
        SceneManager.LoadScene("Scene2");
    }
}
```
