<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectFactory.PlaceGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | The GameObject to be initialized. |
| parent | An optional GameObject to be set as the parent. |

### Description

Place the given GameObject in the Scene View using the same preferences as built-in Unity GameObjects.

Use this method to create GameObjects centered in the Scene View or at world origin, depending on user preference. This method also ensures that the GameObject has a unique name, also as defined by preferences.

```csharp
using UnityEditor;
using UnityEngine;// Creates a new GameObject with the same preferences that built-in GameObjects instantiate with.
class CreateGameObjectExample
{
    [MenuItem("GameObject/3D Object/My Cube")]
    static void CreateCube(MenuCommand command)
    {
        var gameObject = ObjectFactory.CreatePrimitive(PrimitiveType.Cube);
        ObjectFactory.PlaceGameObject(gameObject, command.context as GameObject);
    }
}
```
