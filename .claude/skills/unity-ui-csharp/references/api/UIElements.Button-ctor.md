<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Button-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constructs a Button.

### Parameters

| Parameter | Description |
| --- | --- |
| iconImage | The image value that will be rendered as an icon. |
| clickEvent | The action triggered when the button is clicked. |

### Description

Constructs a button with a Background and an Action. The image definition will be used to represent an icon while the Action is triggered when the button is clicked.

Action is the standard C# System.Action.

### Parameters

| Parameter | Description |
| --- | --- |
| clickEvent | The action triggered when the button is clicked. |

### Description

Constructs a button with an Action that is triggered when the button is clicked.

Action is the standard C# System.Action. By default, a single left mouse click triggers the Action. To change the activator, modify clickable.
