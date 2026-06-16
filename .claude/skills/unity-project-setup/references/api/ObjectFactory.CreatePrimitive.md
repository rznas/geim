<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectFactory.CreatePrimitive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of primitive to create. |

### Description

Creates a GameObject primitive with Undo support. The created primitive will have any existing Preset applied to it, see Preset Manager.

```csharp
using UnityEngine;
using UnityEditor;public class CreatePrimitiveExample
{
    [MenuItem("ObjectFactoryExample/Create Cube GameObject")]
    public void CreateCubeEditor()
    {
        Selection.activeGameObject = ObjectFactory.CreatePrimitive(PrimitiveType.Cube);
    }
}
```
