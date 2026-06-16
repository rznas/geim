<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.TrIconContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| iconName | The name of the icon. |
| tooltip | The tooltip to display when the cursor hovers over the icon. |
| icon | The icon to associate with the GUIContent.image. |

### Description

Gets the GUIContent from Unity built-in resources with the given information or creates a GUIContent for a GUI element.

The icon is loaded with a localized tooltip. 

Typically, the icon from `Assets/Editor Default Resources/Icons` is fetched using the icon name. Only the name of the icon, without the .png extension is needed.
