<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component.SendMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| methodName | Name of the method to call. |
| value | Optional parameter for the method. |
| options | Should an error be raised if the target object doesn't implement the method for the message? |

### Description

Calls the method named `methodName` on every MonoBehaviour in this game object.

The receiving method can choose to ignore the argument by having zero arguments. If options is set to SendMessageOptions.RequireReceiver an error is printed when the message is not picked up by any component.

Note that messages will not be sent to inactive objects (ie, those that have been deactivated in the editor or with the GameObject.SetActive function).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        /// Calls the function ApplyDamage with a value of 5
        SendMessage("ApplyDamage", 5.0);
    }    // Every script attached to the game object
    // that has a ApplyDamage function will be called.
    void ApplyDamage(float damage)
    {
        print(damage);
    }
}
```
