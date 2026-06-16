<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.MachineLearningTensorDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This struct contains all the information required to describe an input or output tensor for a machine learning operator.

### Properties

| Property | Description |
| --- | --- |
| dataType | The data type of the tensor. |
| shape | The shape of the tensor. |

### Constructors

| Constructor | Description |
| --- | --- |
| MachineLearningTensorDescriptor | Create a new tensor descriptor. |

### Static Methods

| Method | Description |
| --- | --- |
| NullTensor | Creates a descriptor for tensor without data. You can use it to represent optional tensor descriptors in MachineLearningOperatorFactory operator descriptors. |
