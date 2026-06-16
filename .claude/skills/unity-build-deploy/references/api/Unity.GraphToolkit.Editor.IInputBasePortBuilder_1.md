<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IInputBasePortBuilder_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base interface for input port builders in a port definition context.

Use this interface when defining input ports in a custom node. It extends the generic IPortBuilder_1 interface with input-specific configuration options. The generic parameter `T` allows method chaining using the builder pattern.

### Public Methods

| Method | Description |
| --- | --- |
| Delayed | Configures the input port to use the DelayedAttribute. |
