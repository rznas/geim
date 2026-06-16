<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.AdvancedObjectSelectorParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct containing the different parameters passed to the advanced object selector.

Not all properties are set for each AdvancedObjectSelectorEventType.

### Properties

| Property | Description |
| --- | --- |
| context | The search context. |
| searchFilter | Search filter to use. Only available during AdvancedObjectSelectorEventType.SetSearchFilter. |
| selectorClosedHandler | Function to call when the advanced Object Selector is closed. Only available during AdvancedObjectSelectorEventType.OpenAndSearch. |
| trackingHandler | Function to call when tracking the selection in the advanced Object Selector. Only available during AdvancedObjectSelectorEventType.OpenAndSearch. |
