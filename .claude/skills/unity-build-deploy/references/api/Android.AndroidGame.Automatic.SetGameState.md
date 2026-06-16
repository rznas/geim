<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidGame.Automatic.SetGameState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mode | AndroidGameState value. |

### Description

Sets the current AndroidGameState to be used for Automated game state hinting in Unity. Requires API level 33 (Android 13).

You can set the mode parameter based on the current game state. For example, you can use AndroidGameState.None for displaying the game menu and AndroidGameState.GamePlayInterruptible or AndroidGameState.GamePlayUninterruptible during the gameplay. 

Once set, the mode remains unchanged until you call this method again. However, if the game is interrupted by a full-screen video or a full-screen ad, the mode automatically changes to AndroidGameState.Content.

When target device does not support the required API level, no action is taken.

```csharp
using UnityEngine;
using UnityEngine.Android;public class MainMenu : MonoBehaviour
{
    void Start()
    {
        AndroidGame.Automatic.SetGameState(AndroidGameState.None);
    }
}
```
