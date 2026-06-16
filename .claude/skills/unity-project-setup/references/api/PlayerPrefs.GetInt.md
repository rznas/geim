<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.GetInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key used to retrieve the corresponding int value in the player preferences. |

### Returns

**int** The int value that corresponds to the given `key`. Returns `0` if no int value is found for the given `key`.

### Description

Gets the int value that corresponds to `key` in the player preferences.

Returns `0` if no int value is found for the given `key`.

```csharp
//Use this script to fetch the settings and show them as text on the screen.using UnityEngine;public class PlayerPrefsGetIntExample : MonoBehaviour
{
    int m_Score;    void Start()
    {
        //Fetch the PlayerPref settings
        SetText();
    }    void SetText()
    {
        //Fetch the score from the PlayerPrefs (set these PlayerPrefs in another script). If no Int of this name exists, the default is 0.
        m_Score = PlayerPrefs.GetInt("Score");
    }    void OnGUI()
    {
        //Fetch the PlayerPrefs settings and output them to the screen using Labels
        GUI.Label(new Rect(50, 130, 200, 30), "Score : " + m_Score);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key used to retrieve the corresponding int value in the player preferences. |
| defaultValue | The value to return when no int value is found for the given `key` in the player preferences. |

### Returns

**int** The int value that corresponds to the given `key`. Returns `defaultValue` if no int value is found for the given `key`.

### Description

Gets the int value that corresponds to `key` in the player preferences.

Returns given `defaultValue` if no int value is found for the given `key`.

```csharp
//Use this script to fetch the settings and show them as text on the screen.using UnityEngine;public class PlayerPrefsGetIntExample : MonoBehaviour
{
    int m_Score;    void Start()
    {
        //Fetch the PlayerPref settings
        SetText();
    }    void SetText()
    {
        //Fetch the score from the PlayerPrefs (set these PlayerPrefs in another script). If no Int of this name exists, the default is 100.
        m_Score = PlayerPrefs.GetInt("Score", 100);
    }    void OnGUI()
    {
        //Fetch the PlayerPrefs settings and output them to the screen using Labels.
        GUI.Label(new Rect(50, 130, 200, 30), "Score : " + m_Score);
    }
}
```
