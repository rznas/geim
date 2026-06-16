<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindowTitleAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to set title text and icon for an Editor window.

Unity displays the text in the window's title bar. If the window is dockable, Unity displays the text and icon in the window's tab. Icons must be .png files. The recommended size is 16x16 pixels for regular icons, and 32x32 pixels for large variants used on HiDPI devices (see below). Icons can have variants for different contexts. Variants must be in the same folder as the default icon, and must have the same name, with specific text prepended or appended. If a filename has `d_` prepended to its name (for example, `d_MyWindowIcon.png`) Unity uses this icon instead of the default icon when the Dark theme is enabled. If a variant has @2x appended to its name before the file extension (for example, MyWindowIcon@2x.png), Unity uses this icon when you run the Editor on HiDPI devices. Unity finds and uses variants automatically. If it cannot find the variant it needs, it uses the next closest variant. If no variants exist, Unity uses the default icon.

### Properties

| Property | Description |
| --- | --- |
| icon | Specifies the path to an Editor window's default icon. |
| title | Specifies an Editor window's title text. |
| useTypeNameAsIconName | When set to true Unity sets the window's icon name to be the same as its type name. |

### Constructors

| Constructor | Description |
| --- | --- |
| EditorWindowTitleAttribute | Creates Editor window title content. |
