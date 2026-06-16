<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-projectChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is raised whenever the state of the project changes.

Actions that trigger this event include creating, renaming, or reparenting assets, as well as moving or renaming folders in the project. Note that the event is not raised immediately in response to these actions, but rather during the next update of the editor application.

Actions taken with assets that have HideFlags.HideInHierarchy set will not cause this event to be raised.

Additional resources: EditorWindow.OnProjectChange.
