<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomPropertyDrawer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | If the drawer is for a custom Serializable class, the type should be that class. If the drawer is for script variables with a specific PropertyAttribute, the type should be that attribute. |
| useForChildren | If true, the drawer will be used for any children of the specified class unless they define their own drawer. |

### Description

Tells a PropertyDrawer or DecoratorDrawer class which run-time class or attribute it's a drawer for.

When you make a custom drawer, you need put this attribute on the drawer class.

Additional resources: PropertyDrawer class, DecoratorDrawer class.
