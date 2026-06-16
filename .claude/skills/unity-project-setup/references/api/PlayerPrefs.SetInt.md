<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.SetInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets a single integer value for the preference identified by the given key. You can use PlayerPrefs.GetInt to retrieve this value.

The following example passes the `KeyName` and `Value` variables to a function called `SetInt`. The function uses the `KeyName` variable in `PlayerPrefs.SetInt` as an identifier, and `Value` as the contents to store. For example, you could use `PlayerPrefs.SetInt` to store the user’s currency, like this: /PlayerPrefs.SetInt(“CharacterMoney”, 123)/.

The GetInt function then uses the same `KeyName` variable to retrieve the value stored in the `PlayerPrefs` data.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public void SetInt(string KeyName, int Value)
    {
        PlayerPrefs.SetInt(KeyName, Value);
    }    public int Getint(string KeyName)
    {
        return PlayerPrefs.GetInt(KeyName);
    }
}
```
