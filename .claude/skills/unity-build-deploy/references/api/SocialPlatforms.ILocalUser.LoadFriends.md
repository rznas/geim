<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SocialPlatforms.ILocalUser.LoadFriends.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Fetches the friends list of the logged in user. The friends list on the Social.localUser instance is populated if this call succeeds.

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;
using System.Collections;public class Example : MonoBehaviour
{
    void Start()
    {
        Social.localUser.LoadFriends(success => {
            Debug.Log(success ? "Loaded " + Social.localUser.friends.Length + " friends" : "Loading friends failed");
        });
    }
}
```
