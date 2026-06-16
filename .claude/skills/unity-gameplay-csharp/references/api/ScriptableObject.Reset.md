<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.Reset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reset to default values.

Reset is called when the user hits the Reset button in the Inspector's context menu or when adding the component the first time. This function is only called in editor mode. Reset is most commonly used to give good default values in the Inspector.

```csharp
// Sets target to a default value.
// This could be used in a follow camera.using UnityEngine;public class Example : ScriptableObject
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
