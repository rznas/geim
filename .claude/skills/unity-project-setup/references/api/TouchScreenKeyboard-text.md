<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard-text.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the text displayed by the input field of the keyboard.

This value can be accessed at any moment, even if user has not yet finished input process.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string inputText = "text";
    private TouchScreenKeyboard keyboard;
    // Updates button's text while user is typing
    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 10, 200, 32), inputText))
            keyboard = TouchScreenKeyboard.Open(inputText);        if (keyboard != null)
            inputText = keyboard.text;
    }
}
```
