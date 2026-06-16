<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedObject.SetIsDifferentCacheDirty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Update `hasMultipleDifferentValues` cache on the next /Update()/ call.

Normally, you should not need to call this, as the SerializedProperty setters take care of this. However, when you change an object bypassing the SerializedProperty class, you will need to manually call this to force the difference cache to be updated.
