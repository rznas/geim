<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelectorHandlerWithLabelsAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| labels | An array of strings that represents the different labels to use as constraints. |
| matchAll | This parameter specifies whether all labels must match, or only one of them must be present. |

### Description

Constructor used to declare the ObjectSelectorHandlerWithLabelsAttribute on a field.

The "labels" parameter represents the labels to use as constraints. If there is more than one label, an Asset needs to have all the labels for the object selector to display it. If you set the "matchAll" parameter to false to disable this, only one label must be present.
