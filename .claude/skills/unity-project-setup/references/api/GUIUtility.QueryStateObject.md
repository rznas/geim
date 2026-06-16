<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.QueryStateObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get an existing state object from a controlID.

This will return a recycled state object that is unique for `controlID`. If the state object has not been created by calling GetStateObject then it cannot be accessed using QueryStateObject. A call into QueryStateObject with the state object not created is invalid. A null may be returned, but is not guaranteed. An exception may happen instead.

Additional resources: GUIUtility.GetStateObject.
