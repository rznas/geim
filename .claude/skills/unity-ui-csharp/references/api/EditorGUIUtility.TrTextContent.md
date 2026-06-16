<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.TrTextContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the existing GUIContent. |
| text | The text associated with the GUIContent.text. |
| tooltip | The tooltip to display when the cursor hovers over the icon. |
| icon | The icon to associate with the GUIContent.image. |
| iconName | The name of the icon. |

### Description

Gets the GUIContent from the Unity built-in resources with the given key or creates a GUIContent for a GUI element.

The text and the tooltip are localized and loaded with an icon.

Typically, the icon from `Assets/Editor Default Resources/Icons` is fetched using the icon name. Only the name of the icon, without the .png extension is needed.
