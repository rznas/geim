<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelectorHandlerAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A class attribute that allows you to define dynamic constraint on a MonoBehavior or ScriptableObject's field for the object selector.

This attribute identifies methods as custom object selector handlers. Handlers require editor-specific objects to work. If you want to constrain a UnityEngine script's field, you must define a custom attribute, decorate the field with it, and use this attribute in your editor code when you declare your custom handler.
