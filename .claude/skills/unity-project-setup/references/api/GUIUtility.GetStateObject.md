<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.GetStateObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get a state object from a controlID.

This will return a recycled state object that is unique for `controlID`. If there is no state object then a new one will be created and hooked up to the `controlID`.
 
 On the first call into GetStateObject a new state object will be created. The `controlID` uniquely refers to this object. On subsequent calls the stored object will be returned.

Additional resources: GUIUtility.QueryStateObject.
