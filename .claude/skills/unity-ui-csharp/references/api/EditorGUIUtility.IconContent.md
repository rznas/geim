<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.IconContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the desired icon. |
| text | Tooltip for hovering over the icon. |

### Description

Fetch the GUIContent from the Unity builtin resources with the given name.

EditorGUIUtility.IconContent is used to create a GUIContent for a GUI element. Only icons are loaded. Typically the icon from `Assets/Editor Default Resources/Icons` is fetched using the first argument. Only the name of the icon, without the png extension is needed.
 
 The second argument provides the text for a hovering tooltip. This string needs to start with a vertical bar "**|**" character to flag it as a tooltip.
 
 **Note:** The hovering over the tooltip cannot currently be positioned.
