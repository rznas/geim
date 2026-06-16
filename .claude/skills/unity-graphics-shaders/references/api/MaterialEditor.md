<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Unity Material Editor.

Extend this class to write your own custom material editor. For more detailed information see the Custom Material Editor section of the ShaderLab reference.

### Static Properties

| Property | Description |
| --- | --- |
| kMiniTextureFieldLabelIndentLevel | Useful for indenting shader properties that need the same indent as mini texture field. |

### Properties

| Property | Description |
| --- | --- |
| customShaderGUI | Returns the custom ShaderGUI implemented by the shader. |
| isVisible | Is the current material expanded. |

### Public Methods

| Method | Description |
| --- | --- |
| Awake | Called when the Editor is woken up. |
| BeginAnimatedCheck | Creates a Property wrapper, useful for making regular GUI controls work with MaterialProperty. |
| ColorProperty | Draw a property field for a color shader property. |
| CreatePreview | See Editor.CreatePreview. |
| DefaultPreviewGUI | Default handling of preview area for materials. |
| DefaultPreviewSettingsGUI | Default toolbar for material preview area. |
| DefaultShaderProperty | Handles UI for one shader property ignoring any custom drawers. |
| DoubleSidedGIField | Display UI for editing a material's Double Sided Global Illumination setting. Returns true if the UI is indeed displayed i.e. the material supports the Double Sided Global Illumination setting. +Additional resources: Material.doubleSidedGI. |
| EmissionEnabledProperty | This function will draw the UI for controlling whether emission is enabled or not on a material. |
| EnableInstancingField | Display UI for editing material's render queue setting. |
| EndAnimatedCheck | Ends a Property wrapper started with BeginAnimatedCheck. |
| FloatProperty | Draw a property field for a float shader property. |
| GetPropertyHeight | Calculate height needed for the property. |
| GetTexturePropertyCustomArea | Returns the free rect below the label and before the large thumb object field. Is used for e.g. tiling and offset properties. |
| HasPreviewGUI | Can this component be Previewed in its current state? |
| HelpBoxWithButton | Make a help box with a message and button. Returns true, if button was pressed. |
| IntegerProperty | Draw a property field for an integer shader property. |
| IsInstancingEnabled | Determines whether the Enable Instancing checkbox is checked. |
| LightmapEmissionFlagsProperty | Draws the UI for setting the global illumination flag of a material. |
| LightmapEmissionProperty | This function will draw the UI for the lightmap emission property. (None, Realtime, baked)Additional resources: MaterialLightmapFlags. |
| OnDisable | Called when the editor is disabled, if overridden please call the base OnDisable() to ensure that the material inspector is set up properly. |
| OnEnable | Called when the editor is enabled, if overridden please call the base OnEnable() to ensure that the material inspector is set up properly. |
| OnInspectorGUI | Implement specific MaterialEditor GUI code here. If you want to simply extend the existing editor call the base OnInspectorGUI () before doing any custom GUI code. |
| OnPreviewGUI | Custom preview for Image component. |
| PropertiesChanged | Whenever a material property is changed call this function. This will rebuild the inspector and validate the properties. |
| PropertiesDefaultGUI | Default rendering of shader properties. |
| PropertiesGUI | Render the standard material properties. This method will either render properties using a ShaderGUI instance if found otherwise it uses PropertiesDefaultGUI. |
| RangeProperty | Draw a range slider for a range shader property. |
| RegisterPropertyChangeUndo | Call this when you change a material property. It will add an undo for the action. |
| RenderQueueField | Display UI for editing material's render queue setting. |
| RequiresConstantRepaint | Does this edit require to be repainted constantly in its current state? |
| SetDefaultGUIWidths | Set EditorGUIUtility.fieldWidth and labelWidth to the default values that PropertiesGUI uses. |
| SetShader | Set the shader of the material. |
| ShaderProperty | Handes UI for one shader property. |
| TextureCompatibilityWarning | Checks if particular property has incorrect type of texture specified by the material, displays appropriate warning and suggests the user to automatically fix the problem. |
| TextureProperty | Draw a property field for a texture shader property. |
| TexturePropertyMiniThumbnail | Draw a property field for a texture shader property that only takes up a single line height. |
| TexturePropertySingleLine | Method for showing a texture property control with additional inlined properites. |
| TexturePropertyTwoLines | Method for showing a compact layout of properties. |
| TexturePropertyWithHDRColor | Method for showing a texture property control with a HDR color field and its color brightness float field. |
| TextureScaleOffsetProperty | Draws tiling and offset properties for a texture. |
| VectorProperty | Draw a property field for a vector shader property. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnShaderChanged | A callback that is invoked when a Material's Shader is changed in the Inspector. |

### Static Methods

| Method | Description |
| --- | --- |
| ApplyMaterialPropertyDrawers | Apply initial MaterialPropertyDrawer values. |
| BeginProperty | Creates a wrapper enabling the Unity Editor to display GUI controls for the property. |
| EndProperty | Closes a property wrapper that begins with MaterialEditor.BeginProperty. |
| FixupEmissiveFlag | Returns a properly set global illlumination flag based on the passed in flag and the given color. |
| GetDefaultPropertyHeight | Calculate height needed for the property, ignoring custom drawers. |
| GetFlexibleRectBetweenFieldAndRightEdge | Utility method for GUI layouting ShaderGUI. Used e.g for the rect after a left aligned Color field. |
| GetFlexibleRectBetweenLabelAndField | Utility method for GUI layouting ShaderGUI. |
| GetLeftAlignedFieldRect | Utility method for GUI layouting ShaderGUI. |
| GetMaterialProperties | Get shader property information of the materials you pass in. |
| GetMaterialProperty | Get information about a single shader property. |
| GetMaterialPropertyNames | Gets the shader property names of the materials you pass in. |
| GetRectAfterLabelWidth | Utility method for GUI layouting ShaderGUI. This is the rect after the label which can be used for multiple properties. The input rect can be fetched by calling: EditorGUILayout.GetControlRect. |
| GetRightAlignedFieldRect | Utility method for GUI layouting ShaderGUI. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hasUnsavedChanges | This property specifies whether the Editor prompts the user to save or discard unsaved changes before the Inspector gets rebuilt. |
| saveChangesMessage | The message that displays to the user if they are prompted to save. |
| serializedObject | A SerializedObject representing the object or objects being inspected. |
| target | The object being inspected. |
| targets | An array of all the object being inspected. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateInspectorGUI | Implement this method to make a custom UIElements inspector. |
| DiscardChanges | Discards unsaved changes to the contents of the editor. |
| DrawDefaultInspector | Draws the built-in Inspector. |
| DrawHeader | Call this function to draw the header of the editor. |
| DrawPreview | The first entry point for Preview Drawing. |
| GetInfoString | Implement this method to show asset information on top of the asset preview. |
| GetPreviewTitle | Override this method if you want to change the label of the Preview area. |
| OnInteractivePreviewGUI | Implement to create your own interactive custom preview. Interactive custom previews are used in the preview area of the inspector and the object selector. |
| OnPreviewSettings | Override this method if you want to show custom controls in the preview header. |
| RenderStaticPreview | Override this method if you want to render a static preview. |
| Repaint | Redraw any inspectors that shows this editor. |
| SaveChanges | Performs a save action on the contents of the editor. |
| UseDefaultMargins | Override this method in subclasses to return false if you don't want default margins. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Protected Methods

| Method | Description |
| --- | --- |
| ShouldHideOpenButton | Returns the visibility setting of the "open" button in the Inspector. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateCachedEditor | On return previousEditor is an editor for targetObject or targetObjects. The function either returns if the editor is already tracking the objects, or destroys the previous editor and creates a new one. |
| CreateCachedEditorWithContext | Creates a cached editor using a context object. |
| CreateEditor | Make a custom editor for targetObject or targetObjects. |
| CreateEditorWithContext | Make a custom editor for targetObject or targetObjects with a context object. |
| DrawFoldoutInspector | Draws the inspector GUI with a foldout header for target. |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |
| CreateInstance | Creates an instance of a scriptable object. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| HasFrameBounds | Validates whether custom bounds can be calculated for this Editor. |
| OnGetFrameBounds | Gets custom bounds for the target of this editor. |
| OnSceneGUI | Enables the Editor to handle an event in the Scene view. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |

### Events

| Event | Description |
| --- | --- |
| finishedDefaultHeaderGUI | An event raised while drawing the header of the Inspector window, after the default header items have been drawn. |
