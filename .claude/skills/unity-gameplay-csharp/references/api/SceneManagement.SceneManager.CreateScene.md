<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.CreateScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneName | The name of the new Scene. It cannot be empty or null, or same as the name of the existing Scenes. |
| parameters | Various parameters used to create the Scene. |

### Returns

**Scene** A reference to the new Scene that was created, or an invalid Scene if creation failed.

### Description

Create an empty new Scene at runtime with the given name.

The new Scene will be opened additively into the hierarchy alongside any existing Scenes that are currently open. The path of the new Scene will be empty. This function is for creating Scenes at runtime. To create a Scene at edit-time (for example, when making an editor script or tool which needs to create Scenes), use EditorSceneManager.NewScene.

```csharp
using UnityEngine.SceneManagement;
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public void Awake()
    {
        Scene newScene = SceneManager.CreateScene("My New Scene");
    }
}
```
