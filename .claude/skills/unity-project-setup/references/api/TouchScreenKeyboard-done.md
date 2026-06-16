<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard-done.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies if input process was finished. (Read Only)

Keyboard input process can be finished either by user tapping "Done" button or script setting `active` property to false. Note that keyboard might be temporarily inactive (either by sliding in/out due to orientation change or by appearance of another keyboard), however its input process might still be not finished and will be resumed automatically.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Opens a keyboard and shows what has been typed.    TouchScreenKeyboard keyboard;
    public string text = "";    void Start()
    {
        keyboard = TouchScreenKeyboard.Open(text, TouchScreenKeyboardType.Default);
    }    void Update()
    {
        if (keyboard != null && keyboard.status == TouchScreenKeyboard.Status.Done)
        {
            text = keyboard.text;
            print("User input is: " + text);
        }
    }
}
```
