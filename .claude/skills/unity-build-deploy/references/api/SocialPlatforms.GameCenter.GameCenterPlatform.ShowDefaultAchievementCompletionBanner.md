<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SocialPlatforms.GameCenter.GameCenterPlatform.ShowDefaultAchievementCompletionBanner.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Show the default iOS banner when achievements are completed.

This only works on iOS 5.0+ and does nothing on older versions. Code example:

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms.GameCenter;public class DoAchievement : MonoBehaviour
{
    void Start()
    {
        GameCenterPlatform.ShowDefaultAchievementCompletionBanner(true);
        Social.localUser.Authenticate(success => {
            if (success)
                ReportAchievement();
            else
                Debug.Log("Failed to authenticate");
        });
    }    void ReportAchievement()
    {
        Social.ReportProgress("Achievement01", 100, (result) => {
            Debug.Log(result ? "Reported achievement" : "Failed to report achievement");
        });
    }
}
```
