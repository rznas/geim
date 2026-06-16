<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.AdvancedObjectSelectorValidatorAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | A unique identifier for this advanced object selector validator. |

### Description

Registers a method to act as an advanced object selector validator.

A unique identifier is required when registering a custom advanced object selector validator. If the identifier is not unique, the advanced object selector validator is not registered and a warning is displayed in the console. The same identifier must be used by the attribute AdvancedObjectSelectorAttribute to properly register an advanced object selector.
