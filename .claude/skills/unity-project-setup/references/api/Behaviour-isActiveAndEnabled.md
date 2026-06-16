<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Behaviour-isActiveAndEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called.

`Behaviour.isActiveAndEnabled` returns `true` only if all the following conditions are met:

- The GameObject that the Behaviour is attached to is active in the hierarchy (GameObject.activeInHierarchy == `true`).
- The Behaviour is enabled (Behaviour.enabled == `true`).
- The component's MonoBehaviour.OnEnable method has been called.

**Important:** Even if a component is enabled and its GameObject is active, `isActiveAndEnabled` still returns `false` until `OnEnable` is called on the component. This is by design in Unity's scripting lifecyle. For more information, refer to Event function execution order in the User Manual.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.UI;public class Example : MonoBehaviour
{
    public Image pauseMenu;    public void Update()
    {
        //Checks if the GameObject and Image are active and enabled.
        if (pauseMenu.isActiveAndEnabled)
        {
            //If the Image is enabled, print "Enabled" in the console. Stops when the image or GameObject is disabled.
            Debug.Log("Enabled");
        }
    }
}
```
