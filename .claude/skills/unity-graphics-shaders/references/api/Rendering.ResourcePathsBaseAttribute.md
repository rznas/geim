<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ResourcePathsBaseAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This abstract attribute is used to describe what path to the asset should be used.

This is used in class implementing IRenderPipelineResources. It only keep given data in its constructor in Editor context. At runtime, no memory is used.

### Properties

| Property | Description |
| --- | --- |
| isField | Disambiguish array of 1 element and fields. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
| location | The lookup method. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
| paths | Search paths. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
