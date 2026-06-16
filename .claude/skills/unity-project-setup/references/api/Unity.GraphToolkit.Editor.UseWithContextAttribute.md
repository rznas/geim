<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.UseWithContextAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to indicate which types of ContextNode can contain a given BlockNode type.

Apply this attribute to a class derived from BlockNode to declare which ContextNode types support it. This enables associations between block nodes and their compatible context nodes. Use it to validate and filter the available blocks for specific context nodes.

### Constructors

| Constructor | Description |
| --- | --- |
| UseWithContextAttribute | Initializes a new instance of the UseWithContextAttribute class with the specified context node types. |

### Public Methods

| Method | Description |
| --- | --- |
| IsContextTypeSupported | Determines whether the specified context node type supports the block node decorated with this attribute. |
