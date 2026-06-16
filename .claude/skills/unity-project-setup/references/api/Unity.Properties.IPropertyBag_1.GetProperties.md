<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.IPropertyBag_1.GetProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**PropertyCollection<TContainer>** A IEnumerator_1 structure for all properties.

### Description

Returns an enumerator that iterates through all static properties for the type.

This should return a subset properties returned by GetProperties.

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container hosting the data. |

### Returns

**PropertyCollection<TContainer>** A IEnumerator_1 structure for all properties.

### Description

Returns an enumerator that iterates through all static and dynamic properties for the given container.

This should return all static properties returned by GetProperties in addition to any dynamic properties. If the container is a collection type all elements will be iterated.
