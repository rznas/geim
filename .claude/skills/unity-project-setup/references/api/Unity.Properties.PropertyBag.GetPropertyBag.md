<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyBag.GetPropertyBag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The container type to resolve the property bag for. |

### Returns

**IPropertyBag** The resolved property bag.

### Description

Gets an interface to the PropertyBag_1 for the given type.

The returned IPropertyBag can be used to get the strongly typed generic using the IPropertyBag.Accept interface method.

### Returns

**IPropertyBag<TContainer>** The resolved property bag, strongly typed.

### Description

Gets the strongly typed PropertyBag_1 for the given `TContainer`.
