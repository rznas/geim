<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CanvasRenderer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A component that will render to the screen after all normal rendering has completed when attached to a Canvas. Designed for GUI application.

Additional resources:Canvas.

### Properties

| Property | Description |
| --- | --- |
| absoluteDepth | Depth of the renderer relative to the root canvas. |
| clippingSoftness | The clipping softness to apply to the renderer. |
| cull | Indicates whether geometry emitted by this renderer is ignored. |
| cullTransparentMesh | Indicates whether geometry emitted by this renderer can be ignored when the vertex color alpha is close to zero for every vertex of the mesh. |
| hasMoved | True if any change has occured that would invalidate the positions of generated geometry. |
| hasPopInstruction | Enable 'render stack' pop draw call. |
| hasRectClipping | True if rect clipping has been enabled on this renderer. Additional resources: CanvasRenderer.EnableRectClipping, CanvasRenderer.DisableRectClipping. |
| materialCount | The number of materials usable by this renderer. |
| popMaterialCount | The number of materials usable by this renderer. Used internally for masking. |
| relativeDepth | Depth of the renderer realative to the parent canvas. |

### Public Methods

| Method | Description |
| --- | --- |
| Clear | Remove all cached vertices. |
| DisableRectClipping | Disables rectangle clipping for this CanvasRenderer. |
| EnableRectClipping | Enables rect clipping on the CanvasRendered. Geometry outside of the specified rect will be clipped (not rendered). |
| GetAlpha | Get the current alpha of the renderer. |
| GetColor | Get the current color of the renderer. |
| GetInheritedAlpha | Get the final inherited alpha calculated by including all the parent alphas from included parent CanvasGroups. |
| GetMaterial | Gets the current Material assigned to the CanvasRenderer. |
| GetMesh | Returns the current mesh used to render the canvas content into. |
| GetPopMaterial | Gets the current Material assigned to the CanvasRenderer. Used internally for masking. |
| GetSecondaryTexture | Get the secondary texture at the specifed index. |
| GetSecondaryTextureCount | Get the number of secondary textures usable by this renderer. |
| GetSecondaryTextureName | Get the shader property name of the secondary texture at the specifed index. |
| SetAlpha | Set the alpha of the renderer. Will be multiplied with the UIVertex alpha and the Canvas alpha. |
| SetAlphaTexture | The Alpha Texture that will be passed to the Shader under the _AlphaTex property. |
| SetColor | Set the color of the renderer. Will be multiplied with the UIVertex color and the Canvas color. |
| SetMaterial | Set the material for the canvas renderer. If a texture is specified then it will be used as the 'MainTex' instead of the material's 'MainTex'. Additional resources: CanvasRenderer.materialCount, CanvasRenderer.SetTexture. |
| SetMesh | Sets the Mesh used by this renderer. Note the Mesh must be read/write enabled. |
| SetPopMaterial | Set the material for the canvas renderer. Used internally for masking. |
| SetSecondaryTexture | Sets the secondary texture usable by this renderer at the specified index with the specified shader property name. |
| SetSecondaryTextureCount | Set the number of secondary textures usable by this renderer. If the size is increased then the new data is initialized with default empty values. |
| SetTexture | Sets the texture used by this renderer's material. |

### Static Methods

| Method | Description |
| --- | --- |
| AddUIVertexStream | Take the Vertex stream and split it corrisponding arrays (positions, colors, uv0s, uv1s, normals and tangents). |
| CreateUIVertexStream | Convert a set of vertex components into a stream of UIVertex. |
| SplitUIVertexStreams | Given a list of UIVertex, split the stream into it's component types. |

### Events

| Event | Description |
| --- | --- |
| onRequestRebuild | (Editor Only) Event that gets fired whenever the data in the CanvasRenderer gets invalidated and needs to be rebuilt. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
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
