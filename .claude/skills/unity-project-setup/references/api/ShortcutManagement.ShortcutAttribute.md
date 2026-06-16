<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ShortcutAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Registers a static method as the action for an action shortcut.

An action shortcut triggers when the binding for the shortcut is pressed down. The method that this attribute is placed on must either take no arguments or take a single argument of type ShortcutArguments.

You can bind a ClutchShortcutAttribute and a ShortcutAttribute to the same mouse button. In this case, the action shortcut triggers when the mouse button is released.

### Properties

| Property | Description |
| --- | --- |
| displayName | Optional override of the Shortcut ID when listing the Shortcut in the configuration interface. |

### Constructors

| Constructor | Description |
| --- | --- |
| ShortcutAttribute | Creates an attribute for an action shortcut with an ID, optional context, and optional default binding. |

### Inherited Members
