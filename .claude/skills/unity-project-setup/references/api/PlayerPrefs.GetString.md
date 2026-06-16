<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.GetString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key used to retrieve the corresponding string in the player preferences. |

### Returns

**string** The string corresponding to the given `key`, `string.Empty` if no string is found for the given `key`.

### Description

Gets the string that corresponds to `key` in the player preferences.

Returns `string.Empty` if no string is found for the given `key`.

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key used to retrieve the corresponding string in the player preferences. |
| defaultValue | The value to return when no string is found for the given `key` in the player preferences. |

### Returns

**string** The string corresponding to the given `key`, `defaultValue` if no string is found for the given `key`.

### Description

Gets the string that corresponds to `key` in the player preferences.

Returns given `defaultValue` if no string is found for the given `key`.

```csharp
//Use this script to fetch the settings and show them as text on the screen.using UnityEngine;public class PlayerPrefsGetStringExample : MonoBehaviour
{
    string m_PlayerName;    void Start()
    {
        //Fetch the PlayerPref settings
        SetText();
    }    void SetText()
    {
        //Fetch name (string) from the PlayerPrefs (set these PlayerPrefs in another script). If no string exists, the default is "No Name"
        m_PlayerName = PlayerPrefs.GetString("Name", "No Name");
    }    void OnGUI()
    {
        //Fetch the PlayerPrefs settings and output them to the screen using Labels
        GUI.Label(new Rect(50, 50, 200, 30), "Name : " + m_PlayerName);
    }
}
```
