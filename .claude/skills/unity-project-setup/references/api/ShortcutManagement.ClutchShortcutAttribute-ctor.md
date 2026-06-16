<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ClutchShortcutAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Shortcut ID. |
| context | Optional shortcut context type. |
| defaultKeyCode | Optional key code for default binding. |
| defaultShortcutModifiers | Optional shortcut modifiers for default binding. |
| tag | Optional custom context used to filter shortcuts after window context is determined. |
| priority | Optional priority for adjusting order position in Helper Bar. |

### Description

Creates an attribute for a *clutch shortcut* with an ID, optional context, and optional default binding.

A clutch shortcut is triggered when the binding for the shortcut is pressed down and also when it is released. The method on which this attribute is placed must take a single argument of type ShortcutArguments.

You can bind a ClutchShortcutAttribute and a ShortcutAttribute to the same mouse button. In this case, the clutch shortcut triggers when the mouse button is slightly dragged and also when it is released.

The ID is used to display the shortcut in the configuration interface. Use a forward slash group multiple shortcuts together in the configuration interface, e.g. "MyWindow/Shortcut1" and "MyWindow/Shortcut2".
