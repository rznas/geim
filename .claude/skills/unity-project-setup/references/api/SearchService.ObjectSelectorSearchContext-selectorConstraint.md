<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelectorSearchContext-selectorConstraint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A function that, when called, indicates whether the object selector should show an item.

This function handles the dynamic constraints introduced by the ObjectSelectorHandlerAttribute. It receives the information of the object to display, the current search context, and the array of edited objects, which can be taken from SearchService.ObjectSelector.SearchContext.editedObjects. It returns a boolean that indicates whether or not the object can be displayed.

Additional resources: ObjectSelectorTargetInfo.
