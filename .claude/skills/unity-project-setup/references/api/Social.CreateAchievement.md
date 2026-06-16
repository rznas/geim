<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Social.CreateAchievement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create an IAchievement instance.

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        IAchievement achievement = Social.CreateAchievement();
        achievement.id = "Achievement01";
        achievement.percentCompleted = 100.0;
        achievement.ReportProgress(result => {
            if (result)
                Debug.Log("Successfully reported progress");
            else
                Debug.Log("Failed to report progress");
        });
    }
}
```
