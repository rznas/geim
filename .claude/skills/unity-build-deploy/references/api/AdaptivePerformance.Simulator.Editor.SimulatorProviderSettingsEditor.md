<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Simulator.Editor.SimulatorProviderSettingsEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is custom Editor for Simulator Provider Settings.

### Properties

| Property | Description |
| --- | --- |
| CurrentTargetGroup | Override of Editor callback to display custom settings. |

### Public Methods

| Method | Description |
| --- | --- |
| OnInspectorGUI | Shows the setting for simulator provider. |

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
| CurrentTargetGroup | Specify which platform the provider should be supported on. |
| IsAutoGameModeAvailable | Controls whether or not the 'AutomaticGameModeEnabled' option is available. Default value is false. |
| IsAutoPerformanceModeAvailable | Controls whether or not the 'AutomaticPerformanceModeEnabled' option is available. Default value is true. |
| IsBoostAvailable | Controls whether or not the 'EnableBoostOnStartup' option is available. Default value is true. |
| IsThermalActionDelayAvailable | Controls whether or not the 'Indexer/Thermal Action Delay' option is available. Default value is false. |
| m_ShowDevelopmentSettings | Whether the development settings are collapsed or not. |
| m_ShowIndexerSettings | Whether the indexer settings are collapsed or not. |
| m_ShowRuntimeSettings | Whether the runtime settings are collapsed or not. |
| m_ShowScalerSettings | Whether the scaler settings are collapsed or not. |
| ShowTargetGroupSelection | Whether to show targetGroupSelection tab when using the default base setting. User should use this property to conditionally define their UI if they choose to custom the provider setting UI for each platform and uses the targetGroupSelection tab. |
| UnsupportedInfo | String to show when the provider is not available on this platform. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateInspectorGUI | Implement this method to make a custom UIElements inspector. |
| CreatePreview | Implement this method to make a custom UIElements inspector preview. |
| DiscardChanges | Discards unsaved changes to the contents of the editor. |
| DrawDefaultInspector | Draws the built-in Inspector. |
| DrawHeader | Call this function to draw the header of the editor. |
| DrawPreview | The first entry point for Preview Drawing. |
| GetInfoString | Implement this method to show asset information on top of the asset preview. |
| GetPreviewTitle | Override this method if you want to change the label of the Preview area. |
| HasPreviewGUI | Override this method in subclasses if you implement OnPreviewGUI. |
| OnInteractivePreviewGUI | Implement to create your own interactive custom preview. Interactive custom previews are used in the preview area of the inspector and the object selector. |
| OnPreviewGUI | Creates a custom preview for the preview area of the Inspector, the headers of the primary Editor, and the object selector.You must implement Editor.HasPreviewGUI for this method to be called. |
| OnPreviewSettings | Override this method if you want to show custom controls in the preview header. |
| RenderStaticPreview | Override this method if you want to render a static preview. |
| Repaint | Redraw any inspectors that shows this editor. |
| RequiresConstantRepaint | Checks if this editor requires constant repaints in its current state. |
| SaveChanges | Performs a save action on the contents of the editor. |
| UseDefaultMargins | Override this method in subclasses to return false if you don't want default margins. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |
| DisplayBaseDeveloperSettings | Displays the base developer settings. Requires DisplayBaseSettingsBegin() to be called before and DisplayBaseSettingsEnd() after as serialization is not taken care of. |
| DisplayBaseIndexerSettings | Displays the base indexer settings. Requires the serializedObject to be updated before and applied after as serialization is not taken care of. |
| DisplayBaseRuntimeSettings | Displays the base runtime settings. Requires DisplayBaseSettingsBegin() to be called before and DisplayBaseSettingsEnd() after as serialization is not taken care of. |
| DisplayBaseSettingsBegin | Starts the display block of the base settings. Needs to be called if DisplayBaseRuntimeSettings() or DisplayBaseDeveloperSettings() gets called. Needs to be concluded by a call to DisplayBaseSettingsEnd(). Pass isLegacyAPI = false to hide the legacy warning banner and comply with new APIs. Default is true (for compatibility). |
| DisplayBaseSettingsEnd | Ends the display block of the base settings. Needs to be called if DisplayBaseSettingsBegin() is called. Pass isLegacyAPI = false to comply with new APIs in this class. Default is true (for compatibility). |
| DisplayScalerSettings | Displays the base scaler settings. Requires the serializedObject to be updated before and applied after as serialization is not taken care of. |
| OnEnable | Enables Settings Editor and generates the reorderable list to store all profiles in. |

### Protected Methods

| Method | Description |
| --- | --- |
| ShouldHideOpenButton | Returns the visibility setting of the "open" button in the Inspector. |
| DisplayProviderSettings | Default UI for showing provider settings on both project settings and build profile. |
| DisplayTargetProviderSettings | Display default common base settings for provider on specific target, which user could choose to override if they are using DisplayProviderSettings. |

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
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |

### Events

| Event | Description |
| --- | --- |
| finishedDefaultHeaderGUI | An event raised while drawing the header of the Inspector window, after the default header items have been drawn. |
