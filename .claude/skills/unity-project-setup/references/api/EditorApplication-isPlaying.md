<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-isPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the Editor is in Play mode.

Returns true if the Editor is in Play mode. Setting isPlaying delays the result until after all script code has completed for this frame. This also returns true if the Editor is paused.

Additional resources: isPaused, isPlayingOrWillChangePlaymode.

```csharp
using UnityEngine;
using UnityEditor;// The following is a simple example where EditorApplication.isPlaying is watched to
// report whether the Editor is in Play mode.public class EditorPlaying : EditorWindow
{
    [MenuItem("Examples/EditorApplication.isPlaying demo")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EditorPlaying));
        window.position = new Rect(100, 100, 150, 50);
        window.Show();
    }    void OnGUI()
    {
        if (EditorApplication.isPlaying)
        {
            EditorGUILayout.LabelField("Playing");
        }
        else
        {
            EditorGUILayout.LabelField("Not playing");
        }
    }
}
```
