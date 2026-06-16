<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GameObjectRecorder.BindComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| component | The component to bind. |

### Description

Adds bindings for all the properties of **component**.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Animations;public class BindComponentScript : MonoBehaviour
{
    void Start()
    {
        var recorder = new GameObjectRecorder(gameObject);        // Add bindings for all the properties of the Transform and BoxCollider components.
        recorder.BindComponent(transform);
        recorder.BindComponent(GetComponent<BoxCollider>());
    }
}
```
