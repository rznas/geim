<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IOptionBuilder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface used to build and configure node options in a fluent manner.

Provided by the Node.IOptionDefinitionContext in a node's Node.OnDefineOptions method.

```csharp
protected override void OnDefineOptions(IOptionDefinitionContext context)
 {
     context.AddOption("MyOption", typeof(int)))
         .WithDefaultValue(2)
         .Delayed();
 }
```

### Public Methods

| Method | Description |
| --- | --- |
| Build | Builds and returns the final INodeOption instance based on the current configuration of the builder. |
| Delayed | Configures the input port to use the UnityEngine.DelayedAttribute. |
| ShowInInspectorOnly | Configures the option to be shown only in the inspector, not in the node header. |
| WithDefaultValue | Configures the default value for the option being built. |
| WithDisplayName | Configures the display name of the option being built. |
| WithTooltip | Configures the tooltip text for the option being built. |
