<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetButtonDown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true during the frame the user pressed down the virtual button identified by `buttonName`.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Call this function from the MonoBehaviour.Update function, since the state gets reset each frame. It will not return true until the user has released the key and pressed it again.

Use this only when implementing action like events IE: shooting a weapon.
 Use Input.GetAxis for any kind of movement behaviour.

To edit, set up, or remove buttons and their names (such as "Fire1"): 1. Go to **Edit** > **Project Settings** > **Input Manager** to bring up the Input Manager. 2. Expand **Axis** by clicking the arrow next to it. This shows the list of the current buttons you have. You can use one of these as the parameter "buttonName". 3. Expand one of the items in the list to access and change aspects such as the button's name and the key, joystick or mouse movement that triggers it. 4. For more information about buttons, see the Input Manager page.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject projectile;
    void Update()
    {
        if (Input.GetButtonDown("Fire1"))
            Instantiate(projectile, transform.position, transform.rotation);
    }
}
```
