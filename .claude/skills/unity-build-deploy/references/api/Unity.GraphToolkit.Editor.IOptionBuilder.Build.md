<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IOptionBuilder.Build.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**INodeOption** The constructed INodeOption.

### Description

Builds and returns the final INodeOption instance based on the current configuration of the builder.

This method is optional. All options are automatically built when the node's Node.OnDefineOptions method completes. Calling this method releases the memory associated with this option back into the pool immediately. You can choose to call this method if there are lots of options being defined to reduce peak memory usage. Only call this after setting all desired configuration options using the builder methods.

```csharp
protected override void OnDefineOptions(IOptionDefinitionContext context)
 {
     context.AddOption("MyOption", typeof(int)))
         .WithDefaultValue(2)
         .Delayed()
         .Build();
 }
```
