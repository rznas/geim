<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlTraits.Init.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ve | The VisualElement to initialize. |
| bag | A bag of name-value pairs, one for each attribute of the UXML element. |
| cc | When the element is created as part of a template instance inserted in another document, this contains information about the insertion point. |

### Description

Initialize a VisualElement instance with values from the UXML element attributes.

Override this function in your traits class to initialize your C# object with values read from the UXML document.
