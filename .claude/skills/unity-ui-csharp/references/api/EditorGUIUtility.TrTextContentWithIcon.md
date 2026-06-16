<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.TrTextContentWithIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | The text associated with the GUIContent.text. |
| icon | The icon associated with the GUIContent.image. |
| iconName | The name of the icon. |
| tooltip | The tooltip to display when the cursor hovers over the icon. |
| messageType | The type of the message to fetch the icon for. |

### Description

Gets the GUIContent from Unity built-in resources with the given information or creates a GUIContent for a GUI element.

The text and the tooltip are localized and loaded with an icon.

Typically, the icon from `Assets/Editor Default Resources/Icons` is fetched using the icon name. Only the name of the icon, without the .png extension is needed.

If a message type is specified instead of an icon or an icon name, the GUIContent.image is the icon associated with that message type.
