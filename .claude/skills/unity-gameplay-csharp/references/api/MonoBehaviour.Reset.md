<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.Reset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reset a component to default values.

Reset is called when you select **Reset** in the Inspector's context menu or when you add a component for the first time, either by dragging and dropping in the Inspector or by calling GameObject.AddComponent from an Editor script.

Reset is most commonly used to give good default values in the Inspector.

**Note**: `Reset` is only called in Edit mode. If you add components at runtime, `Reset` won't be called.

```csharp
// Sets target to a default value.
// This could be used in a follow camera.using UnityEngine;public class Example : MonoBehaviour
{
    public GameObject target;    void Reset()
    {
        //Output the message to the Console
        Debug.Log("Reset");
        if (!target)
            target = GameObject.FindWithTag("Player");
    }
}
```
