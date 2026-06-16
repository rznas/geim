<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.GetExtraPaneTypes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<Type>** The extra types of EditorWindow associated with the current window.

### Description

Gets the extra types of EditorWindow associated with the current window.

By default, there are no extra types. Derived EditorWindow can override this method to provide extra types. For each of these types, an entry is added to the `Add Tab` menu of the window.
