<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase-filePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The file on which this PropertyDatabase is opened.

Multiple PropertyDatabases can be opened on different files, but only a single PropertyDatabase can be opened on a single file. You can do concurrent operations on a single instance of a PropertyDatabase, but for performance reasons you should use a view (see PropertyDatabase.GetView and IPropertyDatabaseView).
