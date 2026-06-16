<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ResourcePathAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This attribute is used to describe what path to the asset should be used.

This is only used in the editor and doesn't have any effect at runtime. See IRenderPipelineResources for usage.

### Constructors

| Constructor | Description |
| --- | --- |
| ResourcePathAttribute | Creates a new ResourcePathAttribute for a single resource. Defaults to Project resource path location. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| isField | Disambiguish array of 1 element and fields. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
| location | The lookup method. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
| paths | Search paths. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
