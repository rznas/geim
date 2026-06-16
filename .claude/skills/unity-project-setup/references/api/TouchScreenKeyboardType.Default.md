<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboardType.Default.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default keyboard layout of the target platform.

An iOS example is shown below:

```csharp
using UnityEngine;
using UnityEngine.iOS;public class ExampleClass : MonoBehaviour
{
    private TouchScreenKeyboard keyboard;    protected void OnGUI()
    {
        GUI.skin.button.fontSize = 36;
        if (GUILayout.Button("Keyboard"))
        {
            keyboard = TouchScreenKeyboard.Open("Hello", TouchScreenKeyboardType.Default);
        }
    }
}
```
