<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomPropertyDrawer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tells a custom PropertyDrawer or DecoratorDrawer which run-time Serializable class or PropertyAttribute it's a drawer for.

When you make a custom PropertyDrawer or DecoratorDrawer, you need put this attribute on the drawer class. If the drawer is for a Serializable class, then pass the type of the class to the CustomPropertyDrawer attribute (only valid for PropertyDrawers; not DecoratorDrawers). If the drawer is for a PropertyAttribute, then pass the type of the PropertyAttribute to the CustomPropertyDrawer attribute.

Additional resources: PropertyDrawer class, DecoratorDrawer class.

### Constructors

| Constructor | Description |
| --- | --- |
| CustomPropertyDrawer | Tells a PropertyDrawer or DecoratorDrawer class which run-time class or attribute it's a drawer for. |
