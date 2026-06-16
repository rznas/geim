<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager-sceneManagerSetupRestored.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This can be useful to get notified when the SceneManager's scenes are replaced with a set of new scenes from calls to RestoreSceneManagerSetup.

Use the `scenes` argument to check what scenes has just been opened.

Additional resources: SceneManagerSetupRestoredCallback.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEditor.SceneManagement;[InitializeOnLoad]
class CheckRestoredScenes
{
    static CheckRestoredScenes()
    {
        EditorSceneManager.sceneManagerSetupRestored += OnSceneManagerSetupRestored;
    }    static void OnSceneManagerSetupRestored(Scene[] scenes)
    {
        Debug.Log("OnSceneManagerSetupRestored: restored " + scenes.Length);
    }
}
```
