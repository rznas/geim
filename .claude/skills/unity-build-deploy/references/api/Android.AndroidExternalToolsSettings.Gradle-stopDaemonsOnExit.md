<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidExternalToolsSettings.Gradle-stopDaemonsOnExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops Gradle daemons when the Unity Editor exits.

This property is enabled by default and it might help to free up resources on your computer.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class GradleDaemonManager
{
    [MenuItem("Build/Toggle Gradle Daemons Stop On Exit")]
    public static void ToggleStopDaemonsOnExit()
    {
        // Get the current state of the setting
        bool currentState = AndroidExternalToolsSettings.Gradle.stopDaemonsOnExit;        // Toggle the setting to change its current state)
        AndroidExternalToolsSettings.Gradle.stopDaemonsOnExit = !currentState;        // Log the result
        if (AndroidExternalToolsSettings.Gradle.stopDaemonsOnExit)
        {
            Debug.Log("Gradle Daemons will stop automatically when you exit the Editor.");
        }
        else
        {
            Debug.Log("Gradle Daemons will not stop automatically when you exit the Editor.");
        }
    }
}
```
