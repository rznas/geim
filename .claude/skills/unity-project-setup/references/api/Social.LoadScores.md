<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Social.LoadScores.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Load a default set of scores from the given leaderboard.

This uses default leaderboard parameters.

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Social.LoadScores("Leaderboard01", scores => {
            if (scores.Length > 0)
            {
                Debug.Log("Got " + scores.Length + " scores");
                string myScores = "Leaderboard:\n";
                foreach (IScore score in scores)
                    myScores += "\t" + score.userID + " " + score.formattedValue + " " + score.date + "\n";
                Debug.Log(myScores);
            }
            else
                Debug.Log("No scores loaded");
        });
    }
}
```
