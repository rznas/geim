<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.DeleteKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes the given `key` from the PlayerPrefs. If the key does not exist, DeleteKey has no impact.

The following example shows a public function called ‘DeleteKey’. The function takes a string variable called ‘KeyName’ as a parameter, which PlayerPrefs.DeleteKey uses to delete the key from the registry.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public void DeleteKey(string KeyName)
    {
        PlayerPrefs.DeleteKey(KeyName);
    }
}
```
