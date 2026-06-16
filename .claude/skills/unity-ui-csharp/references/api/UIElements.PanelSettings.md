<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines a Panel Settings asset that instantiates a panel at runtime. The panel makes it possible for Unity to display UXML-file based UI in the Game view.

The UIDocument component contains a reference to a PanelSettings object. The PanelSettings contains the rendering settings for the UI, including the scale mode and the sort order. Multiple UIDocument components can point to the same PanelSettings object, which optimizes performance when using multiple UI screens in the same scene. 
 For more information on the different properties of the PanelSettings object, refer to Panel Settings properties reference.

### Properties

| Property | Description |
| --- | --- |
| bindingLogLevel | Sets the log level for bindings in panels using this PanelSettings asset. |
| clearColor | Determines whether the color buffer is cleared before the panel is rendered. |
| clearDepthStencil | Determines whether the depth/stencil buffer is cleared before the panel is rendered. |
| colorClearValue | The color used to clear the color buffer. |
| depthClearValue | The depth used to clear the depth/stencil buffer. |
| dynamicAtlasSettings | Settings of the dynamic atlas. |
| fallbackDpi | The DPI value that Unity uses when it cannot determine the screen DPI. |
| forceGammaRendering | Forces the UI shader to output colors in the gamma color space. |
| match | Determines whether Unity uses width, height, or a mix of the two as a reference when it scales the panel area. |
| referenceDpi | The DPI that the UI is designed for. |
| referenceResolution | The resolution the UI is designed for. |
| referenceSpritePixelsPerUnit | Sprites have a Pixels Per Unit value that controls the pixel density of the sprite. For sprites that have the same Pixels Per Unit value as the Reference Pixels Per Unit value in the PanelSettings asset, the pixel density will be one to one. |
| renderMode | Determines how the panel is rendered. Defaults to PanelRenderMode.ScreenSpaceOverlay. |
| scale | A uniform scaling factor that Unity applies to elements in the panel before the panel transform. |
| scaleMode | Determines how elements in the panel scale when the screen size changes. |
| screenMatchMode | Specifies how to scale the panel area when the aspect ratio of the current resolution does not match the reference resolution. |
| sortingOrder | When the Scene uses more than one panel, this value determines where this panel appears in the sorting order relative to other panels. |
| targetDisplay | Set the display intended for the panel. |
| targetTexture | Specifies a Render Texture to render the panel's UI on. |
| textSettings | Specifies a PanelTextSettings that will be used by every UI Document attached to the panel. |
| textureSlotCount | The maximum number of textures that UI Toolkit can bind to the shader at once. |
| themeStyleSheet | Specifies a style sheet that Unity applies to every UI Document attached to the panel. |
| vertexBudget | The expected number of vertices that will be used by this panel. |

### Public Methods

| Method | Description |
| --- | --- |
| SetPanelChangeReceiver | Sets a custom IPanelChangeReceiver in the panelChangeReceiver setter to receive every change event. This method is available only in development builds and the editor, as it is a debug feature to go along the profiling of an application. |
| SetScreenToPanelSpaceFunction | Sets the function that handles the transformation from screen space to panel space. For overlay panels, this function returns the input value. |
| SetScreenToPanelSpaceFunction3D | Sets the function that handles the transformation from screen space to panel space. For overlay panels, this function returns the input value. |

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
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
