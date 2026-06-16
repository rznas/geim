<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-isPaused.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the Editor is paused.

This returns true if the Editor is paused. Use this to change the pause state programmatically, like pressing the Pause button in the main toolbar.

This also returns true when you press the Step button in the main toolbar or when you call Step.

Additional resources: isPlaying.

```csharp
// Simple Editor script that confirms that the game
// is paused.using UnityEditor;
using UnityEngine;public class isPausedExample
{
    [MenuItem("Examples/Scene paused in Play mode")]
    static void EditorPlaying()
    {
        if (EditorApplication.isPaused)
        {
            Debug.Log("Paused");
        }
    }
}
```
