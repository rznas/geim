<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shader scripts used for all rendering.

Most of the advanced rendering is controlled via Material class. Shader class is mostly used just to check whether a shader can run on the user's hardware (isSupported property), setting up global shader properties and keywords, and finding shaders by name (Find method).

Additional resources: Material class, Materials, ShaderLab documentation.

### Static Properties

| Property | Description |
| --- | --- |
| enabledGlobalKeywords | An array containing the global shader keywords that are currently enabled. |
| globalKeywords | An array containing the global shader keywords that currently exist. This includes enabled and disabled global shader keywords. |
| globalMaximumLOD | Shader LOD level for all shaders. |
| globalRenderPipeline | Render pipeline currently in use. |
| maximumChunksOverride | Sets the limit on the number of shader variant chunks Unity loads and keeps in memory. |

### Properties

| Property | Description |
| --- | --- |
| isSupported | Can this shader run on the end-users graphics card? (Read Only) |
| keywordSpace | The local keyword space of this shader. |
| maximumLOD | Shader LOD level for this shader. |
| passCount | Returns the number of shader passes on the active SubShader. |
| renderQueue | The default render queue for this shader. (Read Only) |
| subshaderCount | Returns the number of SubShaders in this shader. |

### Public Methods

| Method | Description |
| --- | --- |
| FindPassTagValue | Searches for the tag specified by tagName on the shader's active SubShader and returns the value of the tag. |
| FindPropertyIndex | Finds the index of a shader property by its name. |
| FindSubshaderTagValue | Searches for the tag specified by tagName on the SubShader specified by subshaderIndex and returns the value of the tag. |
| FindTextureStack | Find the name of a texture stack a texture belongs too. |
| GetDependency | Returns the dependency shader. |
| GetPassCountInSubshader | Returns the number of passes in the given SubShader. |
| GetPropertyAttributes | Returns an array of strings containing attributes of the shader property at the specified index. |
| GetPropertyCount | Returns the number of properties in this Shader. |
| GetPropertyDefaultFloatValue | Returns the default float value of the shader property at the specified index. |
| GetPropertyDefaultIntValue | Returns the default int value of the shader property at the specified index. |
| GetPropertyDefaultVectorValue | Returns the default Vector4 value of the shader property at the specified index. |
| GetPropertyDescription | Returns the description string of the shader property at the specified index. |
| GetPropertyFlags | Returns the ShaderPropertyFlags of the shader property at the specified index. |
| GetPropertyName | Returns the name of the shader property at the specified index. |
| GetPropertyNameId | Returns the nameId of the shader property at the specified index. |
| GetPropertyRangeLimits | Returns the min and max limits for a Range property at the specified index. |
| GetPropertyTextureDefaultName | Returns the default Texture name of a Texture shader property at the specified index. |
| GetPropertyTextureDimension | Returns the TextureDimension of a Texture shader property at the specified index. |
| GetPropertyType | Returns the ShaderPropertyType of the property at the specified index. |

### Static Methods

| Method | Description |
| --- | --- |
| DisableKeyword | Disables a global shader keyword. |
| EnableKeyword | Enables a global shader keyword. |
| Find | Finds a shader with the given name. Returns null if the shader is not found. |
| GetGlobalColor | Gets a global color property for all shaders previously set using SetGlobalColor. |
| GetGlobalFloat | Gets a global float property for all shaders previously set using SetGlobalFloat. |
| GetGlobalFloatArray | Gets a global float array for all shaders previously set using SetGlobalFloatArray. |
| GetGlobalInt | This method is deprecated. Use GetGlobalFloat or GetGlobalInteger instead. |
| GetGlobalInteger | Gets a global integer property for all shaders previously set using SetGlobalInteger. |
| GetGlobalMatrix | Gets a global matrix property for all shaders previously set using SetGlobalMatrix. |
| GetGlobalMatrixArray | Gets a global matrix array for all shaders previously set using SetGlobalMatrixArray. |
| GetGlobalTexture | Gets a global texture property for all shaders previously set using SetGlobalTexture. |
| GetGlobalVector | Gets a global vector property for all shaders previously set using SetGlobalVector. |
| GetGlobalVectorArray | Gets a global vector array for all shaders previously set using SetGlobalVectorArray. |
| IsKeywordEnabled | Checks whether a global shader keyword is enabled. |
| PropertyToID | Gets unique identifier for a shader property name. |
| SetGlobalBuffer | Sets a global buffer property for all shaders. |
| SetGlobalColor | Sets a global color property for all shaders. |
| SetGlobalConstantBuffer | Sets a ComputeBuffer or GraphicsBuffer as a named constant buffer for all shader types. |
| SetGlobalFloat | Sets a global float property for all shaders. |
| SetGlobalFloatArray | Sets a global float array property for all shaders. |
| SetGlobalInt | This method is deprecated. Use SetGlobalFloat or SetGlobalInteger instead. |
| SetGlobalInteger | Sets a global integer property for all shaders. |
| SetGlobalMatrix | Sets a global matrix property for all shaders. |
| SetGlobalMatrixArray | Sets a global matrix array property for all shaders. |
| SetGlobalRayTracingAccelerationStructure | Sets a global RayTracingAccelerationStructure property for all shaders. |
| SetGlobalTexture | Sets a global texture property for all shaders. |
| SetGlobalVector | Sets a global vector property for all shaders. |
| SetGlobalVectorArray | Sets a global vector array property for all shaders. |
| SetKeyword | Sets the state of a global shader keyword. |
| WarmupAllShaders | Prewarms all shader variants of all Shaders currently in memory. |

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
