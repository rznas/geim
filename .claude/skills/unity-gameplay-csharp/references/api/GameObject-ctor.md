<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the GameObject, specified as a string. The name is stored in the name property of the GameObject. |
| components | The components to attach, specified as an array of types that inherit from `Component`. |

### Description

Creates a new GameObject, with optional parameters to specify a name and set of components to attach.

Use the constructor with no arguments to create a GameObject with an empty `name` property and only a `Transform` component attached.

Use the constructor with `name` parameter to create a GameObject with the specified value as the name property and only a `Transform` component attached.

Use the constructor with `name` and `components` parameters to create a GameObject with the specified name and the specified components attached, in addition to the `Transform` component.

When you call the GameObject constructor from a MonoBehaviour script at runtime, the GameObject is created at the root of whichever scene is currently active at the time of the call to the constructor. The currently active scene is that returned by SceneManager.GetActiveScene. The new GameObject is visible in the Hierarchy window at the root of this scene, meaning the GameObject has no parent by default.

If you call the constructor in a context where there is no valid scene loaded, such as during static initialization, or in scripts executing in Edit mode, the GameObject may be created in the "preview scene" or an internal context and not be part of any visible scene. In this case, you can explicitly add the GameObject to a scene using SceneManager.MoveGameObjectToScene.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    private void Start()
    {
        GameObject exampleOne = new GameObject();
        exampleOne.name = "GameObject1";
        exampleOne.AddComponent<Rigidbody>();        GameObject exampleTwo = new GameObject("GameObject2");
        exampleTwo.AddComponent<Rigidbody>();        GameObject exampleThree = new GameObject("GameObject3", typeof(Rigidbody), typeof(BoxCollider));
    }
}
```
