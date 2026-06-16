<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ProjectSearchContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A search context implementation for Project search engines. All methods that are called on a Project search engine, and expect a ISearchContext, receive an object of this type.

### Properties

| Property | Description |
| --- | --- |
| engineScope | An enum that identifies the scope of the current search. This property is automatically set to Project.EngineScope. |
| guid | A unique identifier for this search context. |
| requiredTypeNames | An IEnumerable of strings that contains the type name constraints for this search. |
| requiredTypes | An IEnumerable of types that contains the type constraints for this search. |
