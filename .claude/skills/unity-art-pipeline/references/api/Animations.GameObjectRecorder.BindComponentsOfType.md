<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GameObjectRecorder.BindComponentsOfType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | root or any of its children. |
| recursive | Binds also the **target**'s children transform properties when set to `true`. |
| componentType | Type of the component. |

### Description

Adds bindings for all the properties of the first component of type **T** found in **target**, and also for all the **target**'s children if **recursive** is `true`.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Animations;public class BindComponentScript : MonoBehaviour
{
    void Start()
    {
        var recorder = new GameObjectRecorder(gameObject);        // Add bindings for all the properties of the Transform and BoxCollider components.
        recorder.BindComponentsOfType<Transform>(gameObject, false);
        recorder.BindComponentsOfType<BoxCollider>(gameObject, false);
    }
}
```

It is also possible to use the non-generic method, in which case `typeof()` will get the Type of the component.

This example gets exactly the same result as the example above:

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Animations;public class BindComponentNonGenericScript : MonoBehaviour
{
    void Start()
    {
        var recorder = new GameObjectRecorder(gameObject);        recorder.BindComponentsOfType(gameObject, typeof(Transform), false);
        recorder.BindComponentsOfType(gameObject, typeof(BoxCollider), false);
    }
}
```
