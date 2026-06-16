<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Social.LoadAchievementDescriptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Loads the achievement descriptions associated with this application.

This is usually set up outside Unity on some external service provided by the implementation provider. For example, when using GameCenter you need to set up the achievements using iTunes Connect.

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Social.LoadAchievementDescriptions(descriptions => {
            if (descriptions.Length > 0)
            {
                Debug.Log("Got " + descriptions.Length + " achievement descriptions");
                string achievementDescriptions = "Achievement Descriptions:\n";
                foreach (IAchievementDescription ad in descriptions)
                {
                    achievementDescriptions += "\t" +
                        ad.id + " " +
                        ad.title + " " +
                        ad.unachievedDescription + "\n";
                }
                Debug.Log(achievementDescriptions);
            }
            else
                Debug.Log("Failed to load achievement descriptions");
        });
    }
}
```
