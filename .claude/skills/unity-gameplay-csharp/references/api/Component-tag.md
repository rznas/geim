<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component-tag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The tag of this game object.

A tag can be used to identify a game object. Tags must be declared in the Tags and Layers manager before using them.

**Note:** You should not set a tag from the Awake() or OnValidate() method. This is because the order in which components become awake is not deterministic, and therefore can result in unexpected behaviour such as the tag being overwritten when it is awoken. If you try this, Unity will generate a warning reading "SendMessage cannot be called during Awake, CheckConsistency, or OnValidate".

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints the tag that this transform has
        Debug.Log("Transform Tag is: " + gameObject.tag);
    }
}
```
