<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectFactory.CreateGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the GameObject. |
| types | The optional types to add to the GameObject when created. |
| scene | Scene where the GameObject should be created. |
| hideFlags | HideFlags to assign to the GameObject. |

### Returns

**GameObject** Returns the GameObject that was created.

### Description

Creates a new GameObject.

```csharp
using UnityEngine;
using UnityEditor;public class CreateComponentExample
{
    [MenuItem("ObjectFactoryExample/Create Camera GameObject")]
    public void CreateCameraEditor()
    {
        Selection.activeGameObject = ObjectFactory.CreateGameObject("Camera", typeof(Camera));
    }
}
```
