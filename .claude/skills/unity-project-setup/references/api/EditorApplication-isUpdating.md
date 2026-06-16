<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-isUpdating.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

True if the Editor is currently refreshing the AssetDatabase.

During AssetDatabase refreshing time, the editor checks to see if any files have changed, whether they need to be reimported, and reimports them. The isUpdating property will return true or false depending on whether the AssetDatabase is being loaded or not. (Read Only)

```csharp
using UnityEditor;public class NewSceneWhileNotUpdating
{
    // Simple editor Script that lets you create a new
    // Scene if editor is not updating.    [MenuItem("Example/New Scene while not updating")]
    static void EditorPlaying()
    {
        if (!EditorApplication.isUpdating)
        {
            EditorApplication.NewScene();
        }
    }
}
```
