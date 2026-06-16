<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Font.GetOSInstalledFontNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string[]** An array of the names of all fonts installed on the machine.

### Description

Get names of fonts installed on the machine.

GetOSInstalledFontNames lets you get the names of all the fonts installed on the machine. These names can be passed to CreateDynamicFontFromOSFont, to dynamically render text using any font installed on the user's OS.

```csharp
using UnityEngine;
using System.Collections;// A simple UI to display a selection of OS fonts and allow changing the UI font to any of them.
public class FontSelector : MonoBehaviour
{
    Vector2 scrollPos;
    string[] fonts;    void Start()
    {
        fonts = Font.GetOSInstalledFontNames();
    }    void OnGUI()
    {
        scrollPos = GUILayout.BeginScrollView(scrollPos);        foreach (var font in fonts)
        {
            if (GUILayout.Button(font))
                GUI.skin.font = Font.CreateDynamicFontFromOSFont(font, 12);
        }
        GUILayout.EndScrollView();
    }
}
```
