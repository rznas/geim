<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-focusChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the delegate to use to register for events in which the focus gained or lost.

This delegate allows you to receive focus change events when implementing code that does not use the MonoBehviour namespace.

**Note**: When using this delegate to register for focus changed events in code that uses the MonoBehviour namespace you will also receive events from the MonoBehaviour.OnApplicationFocus method if you have implemented it.
