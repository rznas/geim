<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedObject.UpdateIfRequiredOrScript.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Update serialized object's representation, only if the object has been modified since the last call to Update or if it is a script.

In which case it is not safe to assume that SetDirty has been called. Return true if an Update was done.
