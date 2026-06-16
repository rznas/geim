<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.NewScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| setup | Whether the new Scene should use the default set of GameObjects. |
| mode | Whether to keep existing Scenes open. |

### Returns

**Scene** A reference to the new Scene.

### Description

Create a new Scene.

The setup parameter allows you to select whether or not the default set of GameObjects should be added to the new Scene. See NewSceneSetup for more information about the options.

The mode parameter allows you to select how to open the new Scene, and whether to keep existing Scenes in the Hierarchy. See NewSceneMode for more information about the options.

```csharp
using UnityEditor;
using UnityEditor.SceneManagement;public class ExampleClass
{
    public void Example()
    {
        var newScene = EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Additive);
    }
}
```
