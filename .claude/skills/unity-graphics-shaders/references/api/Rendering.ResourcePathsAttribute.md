<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ResourcePathsAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute specifying information about the paths where these resources are located.

This is only used in the editor and doesn't have any effect at runtime. See IRenderPipelineResources for usage.

### Constructors

| Constructor | Description |
| --- | --- |
| ResourcePathsAttribute | Creates a new ResourcePathsAttribute for an array's elements by specifying each resource. Defaults to Project resource path location. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| isField | Disambiguish array of 1 element and fields. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
| location | The lookup method. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
| paths | Search paths. As we don't store it at runtime, you cannot rely on this property for runtime operation. |
