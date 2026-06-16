<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SocialPlatforms.GameCenter.GameCenterPlatform.ResetAllAchievements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reset all the achievements for the local user.

Only affects the currently running game. Code example:

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms.GameCenter;public class Reset : MonoBehaviour
{
    void Start()
    {
        GameCenterPlatform.ResetAllAchievements((resetResult) => {
            Debug.Log((resetResult) ? "Reset done." : "Reset failed.");
        });
    }
}
```
