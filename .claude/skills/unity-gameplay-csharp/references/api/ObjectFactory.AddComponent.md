<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectFactory.AddComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to add the new component to. |
| type | The type of component to create and add to the GameObject. |

### Returns

**Component** Returns the component that was created and added to the GameObject.

### Description

Creates a new component and adds it to the specified GameObject.

```csharp
using UnityEngine;
using UnityEditor;public class CreateComponentExample
{
    [MenuItem("ObjectFactoryExample/Add Camera to Selection")]
    public void AddDefaultComponentEditor()
    {
        if (Selection.activeGameObject != null)
        {
            Camera camera = ObjectFactory.AddComponent<Camera>(Selection.activeGameObject);
        }
    }
}
```
