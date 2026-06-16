<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelectorSearchContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A search context implementation for ObjectSelector search engines. All methods that are called on an ObjectSelector search engine, and expect a ISearchContext, receive an object of this type.

### Properties

| Property | Description |
| --- | --- |
| allowedEntityIds | IEnumerable of EntityId that contains the EntityIds of objects that the search can include in its results. |
| currentObject | Identifies the currently selected object. |
| editedObjects | When the object selector is opened from an Inspector, this property indicates which objects are currently being edited. |
| endSessionModes | Flags describing the different modes that EndSession is in. |
| engineScope | An enum that identifies the scope of the current search. This property is automatically set to ObjectSelector.EngineScope. |
| guid | A unique identifier for this search context. |
| requiredTypeNames | An IEnumerable of strings that contains the type name constraints for this search. |
| requiredTypes | An IEnumerable of types that contains the type constraints for this search. |
| visibleObjects | Indicates which categories of objects are visible in the window. For example, GameObjects, Assets, or both. |
