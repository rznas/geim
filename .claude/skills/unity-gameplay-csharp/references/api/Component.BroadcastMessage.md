<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component.BroadcastMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| methodName | Name of the method to call. |
| parameter | Optional parameter to pass to the method (can be any value). |
| options | Should an error be raised if the method does not exist for a given target object? |

### Description

Calls the method named `methodName` on every MonoBehaviour in this game object or any of its children.

The receiving method can choose to ignore `parameter` by having zero arguments. if options is set to SendMessageOptions.RequireReceiver an error is printed when the message is not picked up by any component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        /// Calls the function ApplyDamage with a value of 5
        BroadcastMessage("ApplyDamage", 5.0);
    }    // Every script attached to the game object and all its children
    // that has a ApplyDamage function will be called.
    void ApplyDamage(float damage)
    {
        print(damage);
    }
}
```
