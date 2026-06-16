<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.CloseScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The Scene to be closed/removed. |
| removeScene | Bool flag to indicate if the Scene should be removed after closing. |

### Returns

**bool** Returns true if the Scene is closed/removed.

### Description

Close the Scene. If removeScene flag is true, the closed Scene will also be removed from EditorSceneManager.

```csharp
using UnityEngine;
using System.Collections;
using UnityEditor.SceneManagement;
using UnityEngine.SceneManagement;public class ExampleClass
{
    void Example()
    {
        EditorSceneManager.CloseScene(SceneManager.GetSceneByName("Title Screen"), true);
    }
}
```
