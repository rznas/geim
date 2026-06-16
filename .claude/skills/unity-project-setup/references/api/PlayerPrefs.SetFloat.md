<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.SetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the float value of the preference identified by the given key. You can use PlayerPrefs.GetFloat to retrieve this value.

The following example passes the `KeyName` and `Value` variables to a function called `SetFloat`. The function uses the `KeyName` variable in `PlayerPrefs.SetFloat` as an identifier, and `Value` as the contents to store. For example, you could use `PlayerPrefs.SetFloat` to store the user’s current health, like this: /PlayerPrefs.SetFloat(“CharacterHealth”, 60.5f)/. The GetFloat function then uses the same `KeyName` variable to retrieve the value stored in `PlayerPrefs`. See PlayerPrefs.GetFloat for more information.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public void SetFloat(string KeyName, float Value)
    {
        PlayerPrefs.SetFloat(KeyName, Value);
    }    public float GetFloat(string KeyName)
    {
        return PlayerPrefs.GetFloat(KeyName);
    }
}
```
