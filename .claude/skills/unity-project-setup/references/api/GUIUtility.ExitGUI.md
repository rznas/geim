<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.ExitGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Puts the GUI in a state that will prevent all subsequent immediate mode GUI functions from evaluating for the remainder of the GUI loop by throwing an ExitGUIException.

In Unity's immediate mode GUI system, the GUI loop procedes by calling GUI methods during a sequence of Events and these methods take action according to the Event.type. For example, when using GUILayout, controls will first receive a EventType.Layout event to determine how much space they need, and then later receive a EventType.Repaint event to actually draw into the space allocated for them.

In this sequence, it is expected that control IDs are requested and used in the same order for each Event that is processed during the GUI loop, and that the event loop does not re-enter itself. Use GUIUtility.ExitGUI in situations that might violate these assumptions, such as when a change in some value might change what controls are displayed next. Using this method can prevent errors such as `ArgumentException: Getting control 0's position in a group with only 0 controls when doing Repaint`.

Additional resources: GetControlID.
