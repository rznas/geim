<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.BroadcastMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| methodName | The name of the MonoBehaviour method to call. |
| parameter | An optional parameter value to pass to the called method. |
| options | Whether an error should be raised if the method doesn't exist on the target object. |

### Description

Calls the specified method on every MonoBehaviour attached to the GameObject or any of its children.

A `parameter` specified for a method that doesn't accept parameters is ignored. If `options` is set to SendMessageOptions.RequireReceiver an error is printed when the message is not picked up by any component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        /// Calls the function ApplyDamage with a value of 5
        /// // Every script attached to the GameObject and all its children
        // that has a ApplyDamage function will be called.
        gameObject.BroadcastMessage("ApplyDamage", 5.0);
    }
}
public class Example2 : MonoBehaviour
{
    public void ApplyDamage(float damage)
    {
        print(damage);
    }
}
```

Additional resources: MonoBeheaviour, GameObject.SendMessage, GameObject.SendMessageUpwards
