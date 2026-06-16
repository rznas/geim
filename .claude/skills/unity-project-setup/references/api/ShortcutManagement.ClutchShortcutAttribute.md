<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ClutchShortcutAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Registers a static method as the action for a clutch shortcut.

A clutch shortcut is triggered when the user presses the key binding for the shortcut and also when the user releases the key. The method on which this attribute is placed must take a single argument of type ShortcutArguments.

You can bind a ClutchShortcutAttribute and a ShortcutAttribute to the same mouse button. In this case, the clutch shortcut triggers when the mouse button is slightly dragged and also when it is released.

### Constructors

| Constructor | Description |
| --- | --- |
| ClutchShortcutAttribute | Creates an attribute for a clutch shortcut with an ID, optional context, and optional default binding. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| displayName | Optional override of the Shortcut ID when listing the Shortcut in the configuration interface. |
