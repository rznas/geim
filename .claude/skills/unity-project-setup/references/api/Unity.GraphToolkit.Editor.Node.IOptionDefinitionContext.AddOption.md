<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Node.IOptionDefinitionContext.AddOption.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The unique identifier of the option. |
| dataType | The data type of the option. |

### Returns

**IOptionBuilder** An IOptionBuilder to further configure the option.

### Description

Adds a new node option.

`name` is used to identify the option. It must be unique among ports and options on the node. This name is used as the ID when calling GetNodeOptionByName. If IOptionBuilder.WithDisplayName is not used, this name is also used as the option's display label.

```csharp
protected override void OnDefineOptions(IOptionDefinitionContext context)
 {
     context.AddOption("MyOption", typeof(int)))
         .WithDefaultValue(2)
         .Delayed()
 }
```

### Parameters

| Parameter | Description |
| --- | --- |
| name | The unique identifier of the option. |

### Returns

**IOptionBuilder<TData>** An IOptionBuilder to further configure the option.

### Description

Adds a new node option.

`name` is used to identify the option. It must be unique among ports and options on the node. This name is used as the ID when calling GetNodeOptionByName. If IOptionBuilder_1.WithDisplayName is not used, this name is also used as the option's display label.

```csharp
protected override void OnDefineOptions(IOptionDefinitionContext context)
 {
     context.AddOption&lt;int&gt;("MyOption")
         .WithDefaultValue(2)
         .Delayed()
 }
```
