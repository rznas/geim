<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.SetString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets a single string value for the preference identified by the given key. You can use PlayerPrefs.GetString to retrieve this value.

Keep the value at 2 KB or smaller. To store larger amounts of data, write them to a file in `Application.persistentDataPath`.

 The following example passes the `KeyName` and `Value` variables to a function called `SetString`. The function uses the `KeyName` variable in `PlayerPrefs.SetString` as an identifier, and `Value` as the contents to store. For example, you could use `PlayerPrefs.SetString` to store the user’s name, like this: `PlayerPrefs.SetString(“CharacterName”, “James”)`

The `GetString` function then uses the same `KeyName` variable to retrieve the value stored in the `PlayerPrefs` data.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public void SetString(string KeyName, string Value)
    {
        PlayerPrefs.SetString(KeyName, Value);
    }    public string GetString(string KeyName)
    {
        return PlayerPrefs.GetString(KeyName);
    }
}
```
