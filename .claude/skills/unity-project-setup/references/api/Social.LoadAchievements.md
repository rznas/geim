<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Social.LoadAchievements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Load the achievements the logged in user has already achieved or reported progress on.

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Social.LoadAchievements(achievements => {
            if (achievements.Length > 0)
            {
                Debug.Log("Got " + achievements.Length + " achievement instances");
                string myAchievements = "My achievements:\n";
                foreach (IAchievement achievement in achievements)
                {
                    myAchievements += "\t" +
                        achievement.id + " " +
                        achievement.percentCompleted + " " +
                        achievement.completed + " " +
                        achievement.lastReportedDate + "\n";
                }
                Debug.Log(myAchievements);
            }
            else
                Debug.Log("No achievements returned");
        });
    }
}
```
