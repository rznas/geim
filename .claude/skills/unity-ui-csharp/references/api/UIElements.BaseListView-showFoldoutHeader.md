<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseListView-showFoldoutHeader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property controls whether the list view displays a header, in the form of a foldout that can be expanded or collapsed.

The default value is `false`. When this property is set to `true`, Unity adds a foldout in the hierarchy of the list view and moves the scroll view inside that newly created foldout. You can change the text of this foldout with headerTitle property on the ListView. If showBoundCollectionSize is set to `true`, the ListView includes a TextField to control the array size. If the makeHeader callback is set, no Foldout is shown.
