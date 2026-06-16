<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.HasKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the given `key` exists in PlayerPrefs, otherwise returns false.

The following example demonstrates using PlayerPrefs.HasKey in a conditional statement. It prints one message to the console if the conditional statement returns true (if the key does exist in the `PlayerPrefs` data), and a different message if the conditional statement returns false (if the key does not exist in the `PlayerPrefs` data).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public void HasKey(string KeyName)
    {
        if (PlayerPrefs.HasKey(KeyName))
        {
            Debug.Log("The key " + KeyName + " exists");
        }
        else
            Debug.Log("The key " + KeyName + " does not exist");
    }
}
```
