<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.AdvancedObjectSelectorAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | A unique identifier for this advanced object selector. |
| defaultPriority | The default priority of this advanced object selector. |
| defaultActive | The default active state of this advanced object selector. |

### Description

Registers a method to act as an advanced object selector.

A unique identifier is required when registering a custom advanced object selector. If the identifier is not unique, the advanced object selector is not registered and a warning is displayed in the console. The same identifier must be used by the attribute AdvancedObjectSelectorValidatorAttribute to properly register an advanced object selector. The priority and active state of the advanced object selector can be overriden by users in the **Preferences/Search** settings page.

### Parameters

| Parameter | Description |
| --- | --- |
| id | A unique identifier for this advanced object selector. |
| displayName | The display name of this advanced object selector, shown in the **Preferences/Search** settings page. |
| defaultPriority | The default priority of this advanced object selector. |
| defaultActive | The default active state of this advanced object selector. |

### Description

Registers a method to act as an advanced object selector.

A unique identifier is required when registering a custom advanced object selector. If the identifier is not unique, the advanced object selector is not registered and a warning is displayed in the console. The same identifier must be used by the attribute AdvancedObjectSelectorValidatorAttribute to properly register an advanced object selector. The priority and active state of the advanced object selector can be overriden by users in the **Preferences/Search** settings page.
