<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-inputString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the keyboard input entered this frame. (Read Only)

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Only ASCII characters are contained in the `inputString`.

The string can contain two special characters which should be handled: Character `"\b"` represents backspace.
 Character `"\n"` represents return or enter.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.UI;public class ExampleScript : MonoBehaviour
{
    public Text  gt;    void Start()
    {
        gt = GetComponent<Text>();
    }    void Update()
    {
        foreach (char c in Input.inputString)
        {
            if (c == '\b') // has backspace/delete been pressed?
            {
                if (gt.text.Length != 0)
                {
                    gt.text = gt.text.Substring(0, gt.text.Length - 1);
                }
            }
            else if ((c == '\n') || (c == '\r')) // enter/return
            {
                print("User entered their name: " + gt.text);
            }
            else
            {
                gt.text += c;
            }
        }
    }
}
```
