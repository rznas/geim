<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.BaseElement.AddElementDependency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| element | Element which this element depend on. |
| elementId | ID of an element which this element will depend on. |

### Description

Adds a dependency to this element.

This element will depend on the given element and therefore will be printed below the specified element in the generated file. You can't set an empty element as a dependency of another element and you can't set any element as a dependency of an empty element.

Unity throws an exception if:

- The provided element does not share the same parent.
- The provided element is empty.
- This element is empty.
