<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A shader for GPU ray tracing.

This shader should contain at least a `raygeneration` shader.

### Properties

| Property | Description |
| --- | --- |
| enabledKeywords | An array containing the local shader keywords that are currently enabled for this ray tracing shader. |
| keywordSpace | The local keyword space of this ray tracing shader. |
| maxRecursionDepth | The maximum number of ray bounces this shader can trace (Read Only). |
| shaderKeywords | An array containing names of the local shader keywords that are currently enabled for this ray tracing shader. |

### Public Methods

| Method | Description |
| --- | --- |
| DisableKeyword | Disables a local shader keyword for this ray tracing shader. |
| Dispatch | Dispatches this RayTracingShader. |
| DispatchIndirect | Dispatches this RayTracingShader. |
| EnableKeyword | Enables a local shader keyword for this ray tracing shader. |
| IsKeywordEnabled | Checks whether a local shader keyword is enabled for this ray tracing shader. |
| SetAccelerationStructure | Sets the value for RayTracingAccelerationStructure property of this RayTracingShader. |
| SetBool | Sets the value of a boolean uniform. |
| SetBuffer | Binds an input or output compute buffer. |
| SetConstantBuffer | Binds a constant buffer created through a ComputeBuffer or a GraphicsBuffer. |
| SetFloat | Sets the value of a float uniform. |
| SetFloats | Sets the values for a float array uniform. |
| SetInt | Sets the value of a int uniform. |
| SetInts | Sets the values for a int array uniform. |
| SetKeyword | Sets the state of a local shader keyword for this ray tracing shader. |
| SetMatrix | Sets the value of a matrix uniform. |
| SetMatrixArray | Sets a matrix array uniform. |
| SetShaderPass | Selects which Shader Pass to use when executing ray/geometry intersection shaders. |
| SetTexture | Binds a texture resource. This can be a input or an output texture (UAV). |
| SetTextureFromGlobal | Binds a global texture to a RayTracingShader. |
| SetVector | Sets the value for a vector uniform. |
| SetVectorArray | Sets a vector array uniform. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
