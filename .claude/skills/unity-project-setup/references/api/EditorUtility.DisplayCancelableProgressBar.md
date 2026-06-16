<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.DisplayCancelableProgressBar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Displays or updates a progress bar that has a cancel button.

The window title sets to `title` and the info sets to `info`. Set progress should to a value between 0.0 and 1.0, where 0 indicates nothing is loaded and 1.0 indicates loading is complete.

This is useful when you perform a long blocking operation in an Editor script, and want to notify the user of progress. Use this method for long operations that make the Editor non-responsive. For long operations that happen in the background, use the Progress class instead.

A return value of true indicates that the user pressed the **Cancel** button. When the return value is true, you must stop the task that is in progress. After you display the progress bar, use EditorUtility.ClearProgressBar to clear it.

Additional resources: EditorUtility.DisplayProgressBar, EditorUtility.ClearProgressBar, and Progress.


 *Cancelable progress bar in the Editor.*

```csharp
using System.Threading;
using UnityEditor;
using UnityEngine;// Shows a cancellable progress bar for the specified number of seconds.
public class EditorUtilityDisplayCancelableProgressBar : EditorWindow
{
    public float secs = 5f;
    [MenuItem("Examples/Progress Bar Usage")]
    static void Init()
    {
        var window = GetWindow(typeof(EditorUtilityDisplayCancelableProgressBar));
        window.Show();
    }    void OnGUI()
    {
        secs = EditorGUILayout.Slider("Time to wait:", secs, 1.0f, 20.0f);
        if (GUILayout.Button("Display bar"))
        {
            var step = 0.1f;
            for (float t = 0; t < secs; t += step)
            {
                if (EditorUtility.DisplayCancelableProgressBar("Cancelable", "Doing some work...", t / secs))
                    break;
                // Normally, some computation happens here.
                // This example uses Sleep.
                Thread.Sleep((int)(step * 1000.0f));
            }
            EditorUtility.ClearProgressBar();
        }
    }
}
```
