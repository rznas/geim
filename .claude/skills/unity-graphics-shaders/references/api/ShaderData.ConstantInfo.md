<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderData.ConstantInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides information about a shader constant (uniform) value.

### Properties

| Property | Description |
| --- | --- |
| ArraySize | The number of elements in this constant (Read Only). If this value is greater than 1, the constant is an array. |
| Columns | If the constant is a matrix or vector type, this stores the number of columns. Otherwise, the value is 0. (Read Only) |
| ConstantType | This constant's type (Read Only). |
| DataType | The element data type of this constant (Read Only). |
| Index | The index of this constant in its buffer (Read Only). Typically, this is the byte offset from the start of the cbuffer, but depending on the platform, it may indicate another type of index. |
| Name | The name of this constant (Read Only). |
| Rows | If the constant is a matrix type, this stores the number of rows. If the constant is a vector type, this value will be 1. Otherwise, the value is 0. (Read Only) |
| StructFields | If the constant is a struct, this stores the fields of that struct. Otherwise, the value is null. (Read Only) |
| StructSize | If the constant is a struct, this stores the size (in bytes) of the struct. Otherwise, the value is 0. (Read Only) |
