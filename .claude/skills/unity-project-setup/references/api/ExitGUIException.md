<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ExitGUIException.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An exception that will prevent all subsequent immediate mode GUI functions from evaluating for the remainder of the GUI loop.

If you have exception handling in your GUI code, it should not catch this exception type, as Unity's immediate mode GUI system relies on this exception to exit the current GUI loop properly in some cases.

If you need to exit the immediate mode GUI loop in your own code, you should call GUIUtility.ExitGUI rather than throwing this exception directly.
