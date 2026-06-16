<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.SaveAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Saves all serializable assets that have not yet been written to disk (eg. Materials).

Also makes sure the asset database is written. This function does the same thing as AssetDatabase.SaveAssets with the exception that it is allowed to be called during serialization, and the AssetDatabase function is not.
