<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard.Open.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | Text to edit. |
| keyboardType | Type of keyboard (eg, any text, numbers only, etc). |
| autocorrection | Is autocorrection applied? |
| multiline | Can more than one line of text be entered? |
| secure | Is the text masked (for passwords, etc)? |
| alert | Is the keyboard opened in alert mode? |
| textPlaceholder | Text to be used if no other text is present. |
| characterLimit | How many characters the keyboard input field is limited to. 0 = infinite. (Android and iOS only) |

### Description

Opens the native keyboard provided by OS on the screen.

The `autocorrection` determines whether the input tracks unknown words and suggests a more suitable replacement candidate to the user, replacing the typed text automatically unless the user explicitly overrides the action. The `multiline` determines if user can input more than one line of text. The `secure` identifies whether the keyboard is used for password. Text in the input field will be hidden from the user except the recently typed character. The keyboard can be opened in the `alert` mode too. The `placeholder` string will be displayed when there is no other text in the input field of the keyboard.

Additional resources: Alert keyboard

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string stringToEdit = "Hello World";
    private TouchScreenKeyboard keyboard;    // Opens native keyboard
    void OnGUI()
    {
        stringToEdit = GUI.TextField(new Rect(10, 10, 200, 30), stringToEdit, 30);        if (GUI.Button(new Rect(10, 50, 200, 100), "Default"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.Default);
        }
        if (GUI.Button(new Rect(10, 150, 200, 100), "ASCIICapable"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.ASCIICapable);
        }
        if (GUI.Button(new Rect(10, 250, 200, 100), "Numbers and Punctuation"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.NumbersAndPunctuation);
        }
        if (GUI.Button(new Rect(10, 350, 200, 100), "URL"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.URL);
        }
        if (GUI.Button(new Rect(10, 450, 200, 100), "NumberPad"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.NumberPad);
        }
        if (GUI.Button(new Rect(10, 550, 200, 100), "PhonePad"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.PhonePad);
        }
        if (GUI.Button(new Rect(10, 650, 200, 100), "NamePhonePad"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.NamePhonePad);
        }
        if (GUI.Button(new Rect(10, 750, 200, 100), "EmailAddress"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.EmailAddress);
        }
        if (GUI.Button(new Rect(10, 850, 200, 100), "Social"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.Social);
        }
        if (GUI.Button(new Rect(10, 950, 200, 100), "Search"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.Search);
        }
        // Only supported on iOS
        if (GUI.Button(new Rect(10, 1050, 200, 100), "One Time Code"))
        {
            keyboard = TouchScreenKeyboard.Open("", TouchScreenKeyboardType.OneTimeCode);
        }
    }
}
```
