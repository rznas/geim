<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.GetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key used to retrieve the corresponding float value in the player preferences. |

### Returns

**float** The float value corresponding to the given `key`. Returns `0,0f` if no float value is found for the given `key`.

### Description

Returns the float value that corresponds to `key` in the player preferences.

Returns `0.0f` if no float value is found for the given `key`.

```csharp
//Use this script to get the PlayerPrefs settings and display them as text on the screen.using UnityEngine;public class PlayerPrefsGetFloatExample : MonoBehaviour
{
    float m_Health;    void Start()
    {
        //Fetch the PlayerPref settings
        SetText();
    }    void SetText()
    {
        //Fetch the health from the PlayerPrefs (set these PlayerPrefs elsewhere). If no float of this name exists, the default is 0
        m_Health = PlayerPrefs.GetFloat("Health");
    }    void OnGUI()
    {
        //Fetch the PlayerPrefs settings and output them to the screen using Labels.
        GUI.Label(new Rect(50, 90, 200, 30), "Health : " + m_Health);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key used to retrieve the corresponding float value in the player preferences. |
| defaultValue | The value to return when no float value is found for the given `key` in the player preferences. |

### Returns

**float** The float value corresponding to the given `key`. Returns `defaultValue` if no float value is found for the given `key`.

### Description

Gets the float value that corresponds to `key` in the player preferences.

Returns given `defaultValue` if no float value is found for the given `key`.

```csharp
//Use this script to fetch the PlayerPrefs settings and show them as text on the screen.using UnityEngine;public class PlayerPrefsGetFloatWithDefaultValueExample : MonoBehaviour
{
    float m_Health;    void Start()
    {
        //Fetch the PlayerPref settings.
        SetText();
    }    void SetText()
    {
        //Fetch the health from the PlayerPrefs (set these PlayerPrefs elsewhere). 
        // If no float of this name exists, the default is 100.
        m_Health = PlayerPrefs.GetFloat("Health", 100);
    }    void OnGUI()
    {
        //Fetch the PlayerPrefs settings and output them to the screen using Labels
        GUI.Label(new Rect(50, 90, 200, 30), "Health : " + m_Health);
    }
}
```
