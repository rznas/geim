<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BeforeRenderOrderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this BeforeRenderOrderAttribute when you need to specify a custom callback order for Application.onBeforeRender.

Application.onBeforeRender will reorder all registered events recievers and call them in order, from lowest to highest, based on this attribute. No attribute represents an order of 0.

### Properties

| Property | Description |
| --- | --- |
| order | The order, lowest to highest, that the Application.onBeforeRender event recievers will be called in. |

### Constructors

| Constructor | Description |
| --- | --- |
| BeforeRenderOrderAttribute | When applied to methods, specifies the order called during Application.onBeforeRender events. |
