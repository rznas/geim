<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyBag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The PropertyBag class provides access to registered property bag instances.

### Static Methods

| Method | Description |
| --- | --- |
| AcceptWithSpecializedVisitor | Accepts visitation for the given property bag and tries to invoke the most specialized visitor first. |
| Exists | Returns true if a property bag exists for the given type. |
| GetAllTypesWithAPropertyBag | Returns all the System.Type that have a registered property bag. |
| GetPropertyBag | Gets an interface to the PropertyBag_1 for the given type. |
| Register | Registers a strongly typed PropertyBag_1 for a type. |
| RegisterArray | Creates and registers a IPropertyBag_1 for a built in array type. |
| RegisterDictionary | Creates and registers a IPropertyBag_1 for a Dictionary_2 type. |
| RegisterHashSet | Creates and registers a IPropertyBag_1 for a HashSet_1 type. |
| RegisterIDictionary | Creates and registers a IPropertyBag_1 for the specified IDictionary_2 type. |
| RegisterIList | Creates and registers a IPropertyBag_1 for the specified IList_1 type. |
| RegisterISet | Creates and registers a IPropertyBag_1 for the specified ISet_1 type. |
| RegisterList | Creates and registers a IPropertyBag_1 for a List_1 type. |
| TryGetPropertyBagForValue | Gets a property bag for the concrete type of the given value. |
