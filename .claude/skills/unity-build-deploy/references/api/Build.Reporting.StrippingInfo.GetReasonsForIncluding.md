<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.StrippingInfo.GetReasonsForIncluding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| entityName | The name of an engine module, class, or other entity present in the build. |

### Returns

**IEnumerable<string>** A list of modules, classes, or other entities that caused the provided entity to be included in the build.

### Description

Returns the list of dependencies or reasons that caused the given entity to be included in the build.

The returned list of strings may include names of components, internal engine objects, other modules, or other human-readable reasons. To obtain further information, you can pass each string back into GetReasonsForIncluding again.

For example, calling GetReasonsForIncluding("Physics Module") may return a list that includes "Rigidbody", and you can then call GetReasonsForIncluding("Rigidbody") to get more information about which Scenes or assets are using the Rigidbody component.
