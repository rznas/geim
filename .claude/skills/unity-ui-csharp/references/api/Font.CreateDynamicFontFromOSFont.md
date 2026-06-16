<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Font.CreateDynamicFontFromOSFont.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fontname | The name of the OS font to use for this font object. |
| size | The default character size of the generated font. |
| fontnames | Am array of names of OS fonts to use for this font object. When rendering characters using this font object, the first font which is installed on the machine, which contains the requested character will be used. |

### Returns

**Font** The generate Font object.

### Description

Creates a Font object which lets you render a font installed on the user machine.

CreateDynamicFontFromOSFont creates a font object which references fonts from the OS. This lets you render text using any font installed on the user's machine. See GetOSInstalledFontNames for getting names of installed fonts at runtime, which can be used with this function.
