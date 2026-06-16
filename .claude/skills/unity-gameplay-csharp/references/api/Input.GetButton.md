<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buttonName | The name of the button such as Jump. |

### Returns

**bool** True when an axis has been pressed and not released.

### Description

Returns true while the virtual button identified by `buttonName` is held down.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Think auto fire - this will return true as long as the button is held down. Use this only when implementing events that trigger an action, eg, shooting a weapon. The `buttonName` argument will normally be one of the names in InputManager such as Jump or Fire1. GetButton will return to `false` when it is released.

**Note:** Use GetAxis for input that controls continuous movement.

```csharp
// Instantiates a projectile every 0.5 seconds,
// if the Fire1 button (default is Ctrl) is pressed.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject projectile;
    public float fireDelta = 0.5F;    private float nextFire = 0.5F;
    private GameObject newProjectile;
    private float myTime = 0.0F;    void Update()
    {
        myTime = myTime + Time.deltaTime;        if (Input.GetButton("Fire1") && myTime > nextFire)
        {
            nextFire = myTime + fireDelta;
            newProjectile = Instantiate(projectile, transform.position, transform.rotation) as GameObject;            // create code here that animates the newProjectile            nextFire = nextFire - myTime;
            myTime = 0.0F;
        }
    }
}
```
