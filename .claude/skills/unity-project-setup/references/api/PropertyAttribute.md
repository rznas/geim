<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PropertyAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class to derive custom property attributes from. Use this to create custom attributes for script variables.

A custom attributes can be hooked up with a custom PropertyDrawer class to control how a script variable with that attribute is shown in the Inspector.

Additional resources: PropertyDrawer class.

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
