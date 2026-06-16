<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true while the user holds down the key identified by `name`.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

GetKey will report the status of the named key. This might be used to confirm a key is used for auto fire. For the list of key identifiers see Input Manager. When dealing with input it is recommended to use Input.GetAxis and Input.GetButton instead since it allows end-users to configure the keys.

**iOS, tvOS**: Due platform limitations, GetKeyUp event for keyboard events is delayed by about half a second, see UnityView+Keyboard.mm in the generated Xcode project for more information.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        if (Input.GetKey("up"))
        {
            print("up arrow key is held down");
        }        if (Input.GetKey("down"))
        {
            print("down arrow key is held down");
        }
    }
}
```

### Description

Returns true while the user holds down the key identified by the `key` KeyCode enum parameter.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        if (Input.GetKey(KeyCode.UpArrow))
        {
            print("up arrow key is held down");
        }        if (Input.GetKey(KeyCode.DownArrow))
        {
            print("down arrow key is held down");
        }
    }
}
```
