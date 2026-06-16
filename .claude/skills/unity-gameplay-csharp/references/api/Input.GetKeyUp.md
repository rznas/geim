<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetKeyUp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true during the frame the user releases the key identified by `name`.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Call this function from the MonoBehaviour.Update function, since the state gets reset each frame. It will not return true until the user has pressed the key and released it again.

For the list of key identifiers see Conventional Game Input. When dealing with input it is recommended to use Input.GetAxis and Input.GetButton instead since it allows end-users to configure the keys.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        if (Input.GetKeyUp("space"))
        {
            print("Space key was released");
        }
    }
}
```

### Description

Returns true during the frame the user releases the key identified by the `key` KeyCode enum parameter.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        if (Input.GetKeyUp(KeyCode.Space))
        {
            print("space key was released");
        }
    }
}
```
