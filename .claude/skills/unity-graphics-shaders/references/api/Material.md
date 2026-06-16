<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The material class.

This class exposes all properties from a material, allowing you to animate them. You can also use it to set custom shader properties that can't be accessed through the inspector (e.g. matrices).

In order to get the material used by an object, use the Renderer.material property.

Additional resources: Materials, Shaders.

### Properties

| Property | Description |
| --- | --- |
| color | The main color property of the Material. |
| doubleSidedGI | Gets and sets whether the Double Sided Global Illumination setting is enabled for this material. |
| enabledKeywords | An array containing the local shader keywords that are currently enabled for this material. |
| enableInstancing | Gets and sets whether GPU instancing is enabled for this material. |
| globalIlluminationFlags | Defines how the material should interact with lightmaps and lightprobes. |
| isVariant | Returns true if this material is a material variant. |
| mainTexture | The main texture. |
| mainTextureOffset | Defines the UV offset for the main texture in the Material. This property adjusts the position of the texture mapping on a Mesh surface relative to its UV coordinates. |
| mainTextureScale | The scale of the main texture. |
| parent | Parent of this material. |
| passCount | How many passes are in this material (Read Only). |
| rawRenderQueue | Raw render queue of this material. |
| renderQueue | The render queue to use as an override on this material. |
| shader | The shader used by the material. |
| shaderKeywords | An array containing names of the local shader keywords that are currently enabled for this material. |

### Constructors

| Constructor | Description |
| --- | --- |
| Material |  |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyPropertyOverride | Applies an override associated with a Material Variant to a target. |
| ComputeCRC | Computes a CRC hash value from the content of the material. |
| CopyMatchingPropertiesFromMaterial | Copies properties, keyword states and settings from mat to this material, but only if they exist in both materials. |
| CopyPropertiesFromMaterial | Copy properties from other material into this material. |
| DisableKeyword | Disables a local shader keyword for this material. |
| EnableKeyword | Enables a local shader keyword for this material. |
| FindPass | Returns the index of the pass passName. |
| GetBuffer | Get a named Graphics Buffer value. |
| GetColor | Get a named color value. |
| GetColorArray | Get a named color array. |
| GetConstantBuffer | Get a named Constant Buffer value. |
| GetFloat | Get a named float value. |
| GetFloatArray | Get a named float array. |
| GetInt | This method is deprecated. Use GetFloat or GetInteger instead. |
| GetInteger | Get a named integer value. If the integer property is not found an exception is thrown. |
| GetMatrix | Get a named matrix value from the shader. |
| GetMatrixArray | Get a named matrix array. |
| GetPassName | Returns the name of the shader pass at index pass. |
| GetPropertyNames | Retrieves a list of the named properties in the material that match the input property type. |
| GetShaderPassEnabled | Checks whether a given Shader pass is enabled on this Material. |
| GetTag | Get the value of material's shader tag. |
| GetTexture | Get a named texture. |
| GetTextureOffset | Gets the placement offset of texture propertyName. |
| GetTexturePropertyNameIDs | Return the name IDs of all texture properties exposed on this material. |
| GetTexturePropertyNames | Returns the names of all texture properties exposed on this material. |
| GetTextureScale | Gets the placement scale of texture propertyName. |
| GetVector | Get a named vector value. |
| GetVectorArray | Get a named vector array. |
| HasBuffer | Checks if the ShaderLab file assigned to the Material has a ComputeBuffer property with the given name. |
| HasColor | Checks if the ShaderLab file assigned to the Material has a Color property with the given name. |
| HasConstantBuffer | Checks if the ShaderLab file assigned to the Material has a ConstantBuffer property with the given name. |
| HasFloat | Checks if the ShaderLab file assigned to the Material has a Float property with the given name. This also works with the Float Array property. |
| HasInt | This method is deprecated. Use HasFloat or HasInteger instead. |
| HasInteger | Checks if the ShaderLab file assigned to the Material has an Integer property with the given name. |
| HasMatrix | Checks if the ShaderLab file assigned to the Material has a Matrix property with the given name. This also works with the Matrix Array property. |
| HasProperty | Checks if the ShaderLab file assigned to the Material has a property with the given name. |
| HasTexture | Checks if the ShaderLab file assigned to the Material has a Texture property with the given name. |
| HasVector | Checks if the ShaderLab file assigned to the Material has a Vector property with the given name. This also works with the Vector Array property. |
| IsChildOf | Returns True if the given material is an ancestor of this Material. |
| IsKeywordEnabled | Checks whether a local shader keyword is enabled for this material. |
| IsPropertyLocked | Checks whether a property is locked by this material. |
| IsPropertyLockedByAncestor | Checks whether a property is locked by any of ancestor of this material. |
| IsPropertyOverriden | Checks whether a property is overriden by this material. |
| Lerp | Interpolate properties between two materials. |
| RevertAllPropertyOverrides | Removes all property overrides on this material. |
| RevertPropertyOverride | Removes the override on a property. |
| SetBuffer | Sets a named buffer value. |
| SetColor | Sets the value of a color- or vector-type property. |
| SetColorArray | Sets a color array property. |
| SetConstantBuffer | Sets a ComputeBuffer or GraphicsBuffer as a named constant buffer for the material. |
| SetFloat | Sets a named float value. |
| SetFloatArray | Sets a float array property. |
| SetInt | This method is deprecated. Use SetFloat or SetInteger instead. |
| SetInteger | Sets a named integer value. |
| SetKeyword | Sets the state of a local shader keyword for this material. |
| SetMatrix | Sets a named matrix for the shader. |
| SetMatrixArray | Sets a matrix array property. |
| SetOverrideTag | Sets an override tag/value on the material. |
| SetPass | Activate the given pass for rendering. |
| SetPropertyLock | Sets the lock state of a property for this material. |
| SetShaderPassEnabled | Enables or disables a Shader pass on a per-Material level. |
| SetTexture | Sets a named texture. |
| SetTextureOffset | Sets the placement offset of a given texture. The name parameter is defined in the shader. This method creates a new Material instance. |
| SetTextureScale | Sets the placement scale of texture propertyName. |
| SetVector | Sets a value for a named vector in the material. |
| SetVectorArray | Sets a vector array property. |

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
