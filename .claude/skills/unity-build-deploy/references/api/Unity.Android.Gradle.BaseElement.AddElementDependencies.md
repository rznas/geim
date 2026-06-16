<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.BaseElement.AddElementDependencies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| elements | Collection of elements this element will depend on. |

### Description

Adds a list of dependencies by ID to this element.

This element depends on the given elements and therefore will be printed below the specified elements in the generated file.

Unity throws an exception if:

- Any of the provided elements do not share the same parent.
- Any of the provided elements are empty.
- This element is empty.
