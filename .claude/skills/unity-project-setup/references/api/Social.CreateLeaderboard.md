<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Social.CreateLeaderboard.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create an ILeaderboard instance.

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
        ILeaderboard leaderboard = Social.CreateLeaderboard();
        leaderboard.id = "Leaderboard012";
        leaderboard.LoadScores(result =>
        {
            Debug.Log("Received " + leaderboard.scores.Length + " scores");
            foreach (IScore score in leaderboard.scores)
                Debug.Log(score);
        });
    }    // Update is called once per frame
    void Update()
    {
    }
}
```

```csharp
using UnityEngine;
using UnityEngine.SocialPlatforms;
using System.Collections;public class Example : MonoBehaviour
{
    ILeaderboard m_Leaderboard;    void DoLeaderboard()
    {
        m_Leaderboard = Social.CreateLeaderboard();
        m_Leaderboard.id = "Leaderboard01";
        m_Leaderboard.LoadScores(result => DidLoadLeaderboard(result));
    }    void DidLoadLeaderboard(bool result)
    {
        Debug.Log("Received " + m_Leaderboard.scores.Length + " scores");
        foreach (IScore score in m_Leaderboard.scores)
            Debug.Log(score);
    }
}
```
