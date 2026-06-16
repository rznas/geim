<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The UnityEditor assembly implements the editor-specific APIs in Unity. It cannot be referenced by runtime code compiled into players.

### Classes

| Class | Description |
| --- | --- |
| AdaptivePerformanceBuildHelper<T0> | Base abstract class that provides some common functionality for providers seeking to integrate with management assisted build. |
| AdaptivePerformanceBuildUtils | Helper utilities for build-time modifications. |
| AdaptivePerformanceGeneralSettingsPerBuildTarget | Container class that holds general settings for each build target group installed in Unity. |
| AdaptivePerformancePackageMetadataStore | Provide access to the metadata store. Currently only usable as a way to assign and remove loaders to or from an AdaptivePerformanceManagerSettings instance. |
| AdaptivePerformanceSupportedBuildTargetAttribute | Build attribute to identify which platforms a loader supports. |
| AddAndRemoveRequest | Represents an asynchronous request to add package dependencies to the project, remove package dependencies from the project, or both. |
| AddedComponent | Class with information about a component that has been added to a Prefab instance. |
| AddedGameObject | Class with information about a GameObject that has been added as a child under a Prefab instance. |
| AddRequest | Represents an asynchronous request to add a package to the project. |
| AdvancedDropdown | Inherit from this class to implement your own drop-down control. |
| AdvancedDropdownItem | Items that build the drop-down list. |
| AdvancedDropdownState | The state of the drop-down. This Object can be serialized. |
| AdvancedObjectSelectorAttribute | This attribute lets you register a custom advanced object selector. |
| AdvancedObjectSelectorValidatorAttribute | This attribute lets you register a custom advanced object selector validator. |
| AdvertisementSettings | Editor API for the Unity Services editor feature. Normally UnityAds is enabled from the Services window, but if writing your own editor extension, this API can be used. |
| AnalysisContext | Base class for a context object passed by a Module to an Analyzer's Analyze() method. |
| AnalysisParams | Represents an object which can be passed to an instance of ProjectAuditor to specify how analysis should be performed and to provide delegates to be called when analysis steps have completed. AnalysisParams defaults to values which instruct ProjectAuditor to analyze everything in the project for the current build target, but instances can be populated with custom data in an object initializer to provide additional constraints. |
| AnalyticsSettings | Editor API for the Unity Services editor feature. Normally Analytics is enabled from the Services window, but if writing your own editor extension, this API can be used. |
| AndroidAssetPackImporter | Represents an Android asset pack directory in a project. |
| AnimationClipCurveData | An AnimationClipCurveData object contains all the information needed to identify a specific curve in an AnimationClip. The curve animates a specific property of a component / material attached to a game object / animated bone. |
| AnimationMode | AnimationMode is used by the AnimationWindow to store properties modified by the AnimationClip playback. |
| AnimationModeDriver | AnimationMode uses AnimationModeDriver to identify the animation driver. |
| AnimationModuleAnalyzer | Abstract base class for an Analyzer to be invoked by AnimationModule |
| AnimationUtility | Editor utility functions for modifying animation clips. |
| AnimationWindow | Use the AnimationWindow class to select and edit Animation clips. |
| AnimatorController | The Animator Controller controls animation through layers with state machines, controlled by parameters. |
| AnimatorControllerLayer | Contains a state machine that controls animations of a model or parts of it. |
| AnimatorState | Represents a state in a state machine. |
| AnimatorStateMachine | A graph controlling the interaction of states. Each state references a motion. |
| AnimatorStateTransition | Transitions define when and how the state machine switch from one state to another. AnimatorStateTransition always originate from an Animator State (or AnyState) and have timing parameters. |
| AnimatorTransition | Transitions define when and how the state machine switch from on state to another. AnimatorTransition always originate from a StateMachine or a StateMachine entry. They do not define timing parameters. |
| AnimatorTransitionBase | Base class for animator transitions. Transitions define when and how the state machine switches from one state to another. |
| AnimBool | Lerp from 0 - 1. |
| AnimFloat | An animated float value. |
| AnimQuaternion | An animated Quaternion value. |
| AnimVector3 | An animated Vector3 value. |
| ApplicationTitleDescriptor | Utility class containing all the information necessary to format Unity Editor main window title. All the various fields are concatenated to create a fully formed title. If only ApplicationTitleDescriptor.title is provided, this will become the complete title. |
| ApplyRulesIfGraphicsAPIAttribute | Enable or disable shader keyword filter attributes based on the graphics API. |
| ApplyRulesIfNotGraphicsAPIAttribute | Enable or disable shader keyword filter attributes based on the graphics API. |
| ApplyRulesIfTagsEqualAttribute | Enable or disable shader keyword filter attributes based on shader tags. |
| ApplyRulesIfTagsNotEqualAttribute | Enable or disable shader keyword filter attributes based on shader tags. |
| ArcHandle | A class for a compound handle to edit an angle and a radius in the Scene view. |
| ArrayUtility | Helpers for builtin arrays. |
| Assembly | Class that represents an assembly compiled by Unity. |
| AssemblyDefinitionException | An exception throw for Assembly Definition Files errors. |
| AssemblyReloadEvents | This class has event dispatchers for assembly reload events. |
| Asset | This class containes information about the version control state of an asset. |
| AssetAnalysisContext | A context object passed by AssetsModule to an AssetsModuleAnalyzer's Analyze() method. |
| AssetBundleInfo | Container for holding asset loading information for an AssetBundle to be built. |
| AssetCreationEndAction | Base class to implement callbacks to be used when creating assets via the project window. You can extend the AssetCreationEndAction and write your own callback. |
| AssetDatabase | An Interface for accessing assets and performing operations on assets. |
| AssetDatabaseExperimental | An Interface for accessing assets and performing experimental operations on assets. |
| AssetDatabaseLoadOperation | This operation allows you to track the progress and access the result of an asynchronus AssetDatabase load operation. |
| AssetImportContext | Defines the import context for scripted importers during an import event. |
| AssetImporter | Provides access to import settings and base functionality for all asset types. |
| AssetImporterEditor | Default editor for all asset importer settings. |
| AssetList | A list of version control information about assets. |
| AssetLoadInfo | Container for holding preload information for a given serialized Asset. |
| AssetModificationProcessor | AssetModificationProcessor lets you hook into saving of serialized assets and scenes which are edited inside Unity. |
| AssetMonitoringUtilities | Utility that manages asset monitoring features of UI Toolkit panels. |
| AssetPostprocessor | AssetPostprocessor lets you hook into the import pipeline and run scripts before or after importing assets. |
| AssetPostprocessorStaticVariableIgnoreAttribute | Allows you to decorate static variables in AssetPostprocessor and ScriptedImporter classes that should be ignored by the static variable warning system in the Import Activity window.This attribute is introduced to decorate static variables in PostProcessors and ScripttedImporters to prevent warnings about the usage of static variables. Though static variables in these classes can lead to subtle bugs when running on different Asset Import Workers as each worker has its own Mono Domain separate from the Main Editor, this attribute has been added to reduce the noise which could be generated in some difficult to fix situations involving static variables in said clasess. |
| AssetPreview | Utility for fetching asset previews by instance ID of assets, See AssetPreview.GetAssetPreview. Since previews are loaded asynchronously methods are provided for requesting if all previews have been fully loaded, see AssetPreview.IsLoadingAssetPreviews. Loaded previews are stored in a cache, the size of the cache can be controlled by calling [AssetPreview.SetPreviewTextureCacheSize]. |
| AssetSettingsProvider | AssetSettingsProvider is a specialization of the SettingsProvider class that converts legacy settings to Unified Settings. Legacy settings include any settings that used the Inspector to modify themselves, such as the *.asset files under the ProjectSettings folder. Under the hood, AssetSettingsProvider creates an Editor for specific Assets and builds the UI for the Settings window by wrapping the Editor.OnInspectorGUI function.Internally we use this class to wrap our existing settings. |
| AssetsModuleAnalyzer | Abstract base class for an Analyzer to be invoked by AssetsModule |
| Attacher | Helper object that attaches a visual element next to its target, regarless of their respective location in the visual tree hierarchy. |
| AudioClipAnalysisContext | A context object passed by AudioClipModule to an AudioClipModuleAnalyzer's Analyze() method. |
| AudioClipModuleAnalyzer | Abstract base class for an Analyzer to be invoked by AudioClipModule |
| AudioCurveRendering | Antialiased curve rendering functionality used by audio tools in the editor. |
| AudioImporter | Use this class to modify AudioClip import settings from editor scripts. |
| AuthorInfo | Contains information about the author of a package, including their name, email, and URL. |
| BaseAnimValue<T0> | Abstract base class for Animated Values. |
| BaseAnimValueNonAlloc<T0> | Abstract base class that provides an allocation free version of BaseAnimValue. |
| BaseMask64Field | An Editor-only control that lets users one or more options from a list of options. |
| BaseMaskField<T0> | Base class implementing the shared functionality for editing bit mask values. For more information, refer to UXML element MaskField. |
| BindingExtensions | Provides VisualElement extension methods that implement data binding between INotifyValueChanged fields and SerializedObjects. |
| Blackboard | GraphElement that enables user to dynamically define members of a Graph (such as fields/properties) grouped by sections (BlackboardSection). |
| BlackboardField | GraphElement that represents a field of a Graph. |
| BlackboardRow | Collapsible GraphElement that represents a row in a BlackboardSection. |
| BlackboardSection | GraphElement that represents a section of members in a Blackboard. |
| BlendTree | Blend trees are used to blend continuously animation between their children. They can either be 1D or 2D. |
| BlockNode | Represents a specialized node that can only exist within a ContextNode. |
| BoxBoundsHandle | A compound handle to edit a box-shaped bounding volume in the Scene view. |
| BrokenPrefabAsset | BrokenPrefabAsset is for Prefab files where the file content cannot be loaded without errors. |
| BrushesOverlay | Contains functions that help display Terrain Tools overlays. |
| BuildAutomationSettings | Provides a set of configuration options you can use to customize the settings used when starting a Cloud Build. |
| BuildCallbackContext | Get a BuildCallbackContext object from a IPreprocessBuildWithContext.OnPreprocessBuild or Build.IPreprocessBuildWithContext.OnPostprocessBuild callback. |
| BuildCallbackVersionAttribute | Attribute to provide a version number for IProcessSceneWithReport callbacks. |
| BuildFailedException | An exception class that represents a failed build. |
| BuildPipeline | API for building players or AssetBundles. |
| BuildPipelineContext | Defines the build context for IProcessSceneWithReport during a build event. |
| BuildPlayerContext | Get a BuildPlayerContext object from a BuildPlayerProcessor.PrepareForBuild callback. |
| BuildPlayerProcessor | Extend BuildPlayerProcessor to receive callbacks during a Player build. |
| BuildPlayerWindow | The default build settings window. |
| BuildProfile | Provides a set of configuration settings you can use to build your application on a particular platform. |
| BuildProfileProviderContainer | A container class that contains all provider setting objects used in build profile. This is to accommodate for addComponent API only takes a single object with a type, but we have multiple objects with the same type, and are thus aggregated under this container. |
| BuildProfileSettingsProvider | Provides the display information for a custom settings section in the Build Profile window. |
| BuildProfileSettingsProviderAttribute | Specifies if a settings object applies for a build profile and makes it available as a new section in the Build Profile window. |
| BuildReferenceMap | Container for holding information about where objects will be serialized in a build. |
| BuildReport | The BuildReport API gives you information about the Unity build process. |
| BuildUsageCache | Caching object for the Scriptable Build Pipeline. |
| BuildUsageTagSet | Container for holding information about how objects are being used in a build. |
| CacheServer | This class provides an interface for performing operations on a cache server. |
| CallbackOrderAttribute | Base class for Attributes that require a callback index. |
| CameraDescription | Represents camera information from an imported file. |
| CameraEditor | Unity Camera Editor. |
| CameraEditorUtils | Utilities for cameras. |
| CanEditMultipleObjects | Attribute used to make a custom editor support multi-object editing. |
| CapsuleBoundsHandle | A compound handle to edit a capsule-shaped bounding volume in the Scene view. |
| CategorizationExtensions | Provides helper methods to categorize and sort a list of ICategorizable elements into hierarchical categories and leaves based on custom attributes. |
| ChangeSet | Wrapper around a changeset description and ID. |
| ChangeSets | A list of the ChangeSet class. |
| ChannelClient | ChannelClient is a WebSocket client that connects to Unity's ChannelService, which is a WebSocket server. |
| ChannelService | The ChannelService encapsulates a WebSocket server running in Unity. |
| ClearCacheRequest | Represents an asynchronous request to clear the global package cache on the disk. |
| ClickSelector | Selects element on single click. |
| Client | Use the Unity Package Manager Client class to manage the packages used in a project. |
| ClipboardUtility | A class containing methods to assist with clipboard operations. |
| CloudProjectSettings | Use this class to retrieve information about the currently selected project and the current Unity ID that is logged in. |
| CloudProjectSettingsEventManager | Manages the events related to the project state. |
| ClutchShortcutAttribute | Registers a static method as the action for a clutch shortcut. |
| CodeEditor | Handles interaction with the code editor. |
| CollectImportedDependenciesAttribute | Use this method attribute to specify which methods declare dependancies on imported assets. The methods are called by AssetDatabase during import. |
| ColorField | Makes a field for selecting a color. For more information, refer to UXML element ColorField. |
| ColorPickerHDRConfig | Used as input to ColorField to configure the HDR color ranges in the ColorPicker. |
| CommonRoles | This class provides constant values for some of the common roles used by files in the build. The role of each file in the build is available in BuildFile.role. |
| CompilationPipeline | Methods and properties for script compilation pipeline. |
| ComputeShaderImporter | Define compute shader import settings in the Unity Editor. |
| ConfigField | Describes the configuration fields of the version control that the user has selected in the Unity Editor. |
| ConnectedPlayer | Information of the connected player. |
| ConsoleWindowUtility | Console Window Utility class. |
| ContentBuildInterface | Low level interface for building content for Unity. |
| ContentDragger | Manipulator that allows mouse-dragging of one or more elements. |
| ContentZoomer | Manipulator that allows zooming in GraphView. |
| ContextMenuUtility | Provides methods to add menu items to the Scene view context menu. |
| ContextNode | A specialized node that serves as a dynamic container for compatible BlockNode instances. |
| ConvertToPrefabInstanceSettings | Settings controlling the behavior of PrefabUtility.ConvertToPrefabInstance. |
| CoppaDrawer | A container that fetches the UIElements that draw the COPPA compliance UI and subscribes to its events. |
| CrashReportingSettings | Editor API for the Unity Services editor feature. Normally CrashReporting is enabled from the Services window, but if writing your own editor extension, this API can be used. |
| CreationToolsGroup | This class represents the creation tools group. Pass this class’s type to the ToolAttribute.group parameter to place your EditorTool button in the built-in creation tools group in the Tools overlay. |
| CurveField | Makes a field for editing an AnimationCurve. For more information, refer to UXML element CurveField. |
| CustomEditor | Tells an Editor class which run-time type it's an editor for. |
| CustomObjectIndexerAttribute | Allows a user to register a custom Indexing function for a specific type. |
| CustomPivotAttribute | Registers a CustomPivotMode or CustomPivotRotation as a custom editor pivot setting. Use the PivotManager API or the Tool Settings overlay's UI to activate a registered setting. |
| CustomPivotMode | Use this class to implement an editor pivot mode setting. This is the base class from which all custom pivot mode settings are inherited. |
| CustomPivotRotation | Use this class to implement an editor pivot rotation setting. This is the base class from which all custom pivot rotation settings are inherited. |
| CustomPreviewAttribute | Adds an extra preview in the Inspector for the specified type. |
| CustomPropertyDrawer | Tells a custom PropertyDrawer or DecoratorDrawer which run-time Serializable class or PropertyAttribute it's a drawer for. |
| DecoratorDrawer | Base class to derive custom decorator drawers from. |
| DeeplinkHandlerAttribute | Decorates a public static method to serve as deeplink handler for application-level deeplinks forwarded by the Unity Editor. |
| DefaultAsset | DefaultAsset is used for assets that do not have a specific type (yet). |
| DefaultLaunchReport | Provides information about the application launch. |
| DefaultLightingExplorerExtension | Default definition for the Lighting Explorer. Can be overridden completely or partially. |
| DependencyInfo | A descriptor that stores one of a template Scene's dependency Assets, and specifies whether to clone or reference it when the template is instantiated. |
| Descriptor | Descriptor defines a potential problem and a recommended course of action. |
| DetailBrushRepresentation | Represents data associated with the brush used for scattering details. |
| DeviceSimulator | Class for interacting with a Device Simulator window from a script. |
| DeviceSimulatorPlugin | Extend this class to create a Device Simulator plug-in. |
| DiagnosticParameterAttribute | Used to mark an integer field in an class that inherits from ModuleAnalyzer as being a Diagnostic Parameter. |
| DiagnosticParams | Provides numeric parameters with arbitrary names and defaults, with optional overrides for individual target build platforms. |
| DidReloadScripts | Add this attribute to a method to get a notification after scripts have been reloaded. |
| DiffuseProfileCallbackAttribute | This attribute is used as a callback to set SRP specific properties from the importer. |
| Dispatcher | The search dispatcher is used to synchronize events from the search provider threads and the main UI threads. |
| DragAndDrop | Editor drag & drop operations. |
| Dragger | Base manipulator for mouse-dragging elements. |
| DrawGizmo | The DrawGizmo attribute allows you to supply a gizmo renderer for any Component. |
| Edge | The GraphView edge element. |
| EdgeConnector | Manipulator for creating new edges. |
| EdgeConnector<T0> | Manipulator for creating new edges. |
| EdgeControl | VisualElement that draws the edge lines and detects if mouse is on top of edge. |
| EdgeDragHelper | EdgeDragHelper's constructor. |
| EdgeDragHelper<T0> | Edge drag helper class. |
| EdgeManipulator | Edge manipulator used to drag edges off ports and reconnect them elsewhere. |
| Editor | Derive from this base class to create a custom inspector or editor for your custom object. |
| EditorAction | An EditorAction is a temporary tool that can represent either an atomic action or an interactive utility. |
| EditorAnalytics | Editor API for the EditorAnalytics feature. |
| EditorAnalyticsSessionInfo | Provides access to Editor Analytics session information. |
| EditorApplication | Provides a collection of static utilities, properties, and events to interact with the Unity Editor application itself. |
| EditorBuildSettings | This class allows you to modify the Editor Build Settings via script. |
| EditorBuildSettingsScene | Represents entries in the Scenes list, as displayed in the Build Profiles window. |
| EditorCameraUtils | Utilities for Camera rendering in the Editor. |
| EditorConnection | Handles the connection from the Editor to the Player. |
| EditorDialog | A collection of static methods to show modal dialog boxes. |
| EditorGraphicsSettings | Editor-specific script interface for Graphics Settings. |
| EditorGUI | These work pretty much like the normal GUI functions - and also have matching implementations in EditorGUILayout. |
| EditorGUILayout | Auto laid out version of EditorGUI. |
| EditorGUIUtility | Miscellaneous helper stuff for EditorGUI. |
| EditorJsonUtility | Utility functions for working with JSON data and engine objects. |
| EditorPrefs | Stores and accesses Unity Editor preferences. |
| EditorSceneManager | Manage scenes in the Editor when it is in Edit mode. |
| EditorSettings | User settings for Unity Editor. |
| EditorSnapSettings | Control the behavior of handle snapping in the editor. |
| EditorStyles | Common GUIStyles used for EditorGUI controls. |
| EditorTool | Use this class to implement editor tools. This is the base class from which all editor tools are inherited. |
| EditorToolAttribute | Registers an EditorTool as either a Global tool or a Component tool for a specific target type. |
| EditorToolbarButton | A clickable button used with EditorToolbarElementAttribute. |
| EditorToolbarDropdown | A clickable dropdown used with EditorToolbarElementAttribute. |
| EditorToolbarDropdownToggle | A control that is both a toggle and a dropdown used with EditorToolbarElementAttribute. |
| EditorToolbarElementAttribute | The EditorToolbarElement attribute allows you to make available a specific VisualElement for use in an Editor Toolbar. |
| EditorToolbarFloatField | A float field used with EditorToolbarElementAttribute. |
| EditorToolbarSlider | A clickable slider used with EditorToolbarElementAttribute. |
| EditorToolbarToggle | A toggle displayed as a button. Mainly used inside an Overlay or with EditorToolbarElementAttribute. |
| EditorToolbarUtility | Editor utility functions when working with EditorToolbar. |
| EditorToolContext | Use this class to implement specialized versions of the built-in transform tools. Built-in transform tools include Move, Rotate, Scale, Rect, and Transform. |
| EditorToolContextAttribute | Registers an EditorToolContext as either a global context or a Component context for a specific target type. |
| EditorUserBuildSettings | User build settings for the Editor |
| EditorUserSettings | Class for accessing and modifying Editor user settings related to version control and asset import. |
| EditorUtility | Editor utility functions. |
| EditorWindow | Derive from this class to create a custom Editor window. |
| EditorWindowTitleAttribute | Use this class to set title text and icon for an Editor window. |
| EmbedRequest | Represents an asynchronous request to embed a package inside a project. |
| EngineDiagnosticsSettings | Engine diagnostics data collection settings. |
| EntitlementGroupInfo | Data structure for entitlement group information (often synonymous with a license file), accessed through EntitlementInfo. |
| EntitlementInfo | Data structure for an individual entitlement, the results of a call to LicensingUtility.HasEntitlementsExtended. |
| EnumFlagsField | Makes a dropdown for switching between enum flag values that are marked with the Flags attribute. |
| Error | Contains information about errors that occur during Package Manager operations, including the error message and error code. |
| Events | An interface for accessing the package manager events. Use these events to monitor package changes in your Unity project. |
| EventService | The EventService is a singleton implementation of a ChannelClient that runs on all instances of Unity. It is connected to the "events" channel and allows a Unity instance to send JSON messages to other EventServices in external process, or other instances of Unity. |
| FBXMaterialDescriptionPreprocessor | This is a default implementation for AssetPostProcessor.OnPreprocessMaterialDescription, this implementation converts material descriptions imported from FBX assets into materials for the internal rendering pipeline. |
| FilePathAttribute | An attribute that specifies a file location relative to the Project folder or Unity's preferences folder. Additional resources: Location. |
| FileUtil | Lets you do move, copy, delete operations over files or directories. |
| FilterAttribute | Tell the shader system which shader keywords to include or remove from the build, based on the data field underneath. |
| FrameDataView | Base funtionality for accessing the Profiler data. |
| FreehandSelector | Freehand selection tool. |
| FuzzySearch | Provides a method to match query text using a fuzzy search algorithm. |
| GameObjectRecorder | Records the changing properties of a GameObject as the Scene runs and saves the information into an AnimationClip. |
| GameObjectToolContext | This class represents the default context for manipulation tools. When GameObjectToolContext is active, manipulation tools affect the transform property of GameObjects in the SceneView Selection. |
| GameObjectUtility | GameObject utility functions. |
| GenericMenu | GenericMenu lets you create custom context menus and dropdown menus. |
| GitInfo | Identifies a specific revision for a Git package using a Git commit hash. |
| GizmoInfo | GizmoInfo contains information about the Scene View gizmo and icon for a component type. |
| GizmoUtility | A static class for interacting with the Scene View icons and gizmos for types. |
| GradientField | Makes a field for editing an Gradient. For more information, refer to UXML element GradientField. |
| Graph | Represents the core definition of a graph and defines its behavior. |
| GraphAttribute | Attribute used to declare a graph type by associating it with a file extension and optional configuration options. |
| GraphDatabase | Provides functionality needed to access, and perform operations on, graph assets. |
| GraphElement | Base class for main GraphView VisualElements. |
| GraphElementScopeExtensions | Set of extension methods useful for Scope. |
| GraphicsAPIConstraintAttribute | Enable or disable shader keyword filter attributes based on the graphics API. |
| GraphicsSettingsInspectorUtility | Utility class for GraphicsSettings page. |
| GraphLogger | Provides methods for logging messages, warnings, and errors associated with a graph. |
| GraphView | Main GraphView class. |
| GraphViewBlackboardWindow | The base class for a floating window that contains a Blackboard. |
| GraphViewEditorWindow | Abstract base class for an editor window that contains a GraphView. |
| GraphViewMinimapWindow | A floating window containing a MiniMap. |
| GraphViewToolWindow | Abstract base class for a GraphView tool window. |
| GridBackground | Default GraphView background. |
| GridPalette | GridPalette stores settings for Palette assets when shown in the Palette window. |
| Group | Allows interactive insertion of elements in a named scope. |
| GUIDrawer | Base class for PropertyDrawer and DecoratorDrawer. |
| Handles | Custom 3D GUI controls and drawing in the Scene view. |
| HandleUtility | Helper functions for Scene View style 3D GUI. |
| Help | Helper class to access Unity documentation. |
| HierarchyFrameDataView | Provides access to the Profiler data for a specific frame and thread. |
| Highlighter | Use this class to highlight elements in the editor for use in in-editor tutorials and similar. |
| HyperLinkClickedEventArgs | Arguments for the event EditorGUI.hyperLinkClicked. |
| IconBadge | A rectangular badge, usually attached to another visual element. |
| IHVImageFormatImporter | Use IHVImageFormatImporter to modify Texture2D import settings for Textures in IHV (Independent Hardware Vendor) formats from Editor scripts. These formats allow you to import raw texture data and bypass Unity's texture importer, allowing pixel data which might be compressed by an external tool to be converted to a Texture. IHVImageFormatImporter supports the following file formats: .pvr.astc.ktx.dds |
| IMGUIOverlay | IMGUIOverlay is an implementation of Overlay that provides a IMGUIContainer. |
| ImportLog | Container class that holds the collection of logs generated by an importer during the import process. |
| InitializeOnEnterPlayModeAttribute | Allow an editor class method to be initialized when Unity enters Play Mode. |
| InitializeOnLoadAttribute | Allows you to initialize an Editor class when Unity loads, and when your scripts are recompiled. |
| InitializeOnLoadMethodAttribute | Allow an editor class method to be initialized when Unity loads without action from the user. |
| INodeExtensions | Provides extension methods related to nodes and ports in a graph. |
| InputExtraction | Provides methods for extracting scene data and populating integration worlds for use in light transport calculations. |
| InSceneAssetUtility | Provides methods related to in-scene assets. |
| InspectorElement | Create a VisualElement inspector from a SerializedObject. |
| InstantiationResult | A class that holds the data created when a SceneTemplateAsset is instantiated. |
| IntegrationContext | Container for integration-specific data and state shared across multiple light transport calculations. |
| iOSDeviceRequirement | A device requirement description used for configuration of App Slicing. |
| ItemSelectors | Utility class to generate search column with item selectors. |
| JointAngularLimitHandle | A class for a compound handle to edit multiaxial angular motion limits in the Scene view. |
| L10n | Class for text localization. |
| LayerField | A LayerField editor. For more information, refer to UXML element LayerField. |
| LayerMaskField | A LayerMaskField editor. For more information, refer to UXML element LayerMaskField. |
| LicensingUtility | Use the Licensing Utility class to request user permissions. User permissions are referred to as entitlements, which are simple strings, ie. "com.unity.editor.ui". |
| LightDescription | Represents light information from an imported file. |
| LightEditor | The class used to render the Light Editor when a Light is selected in the Unity Editor. |
| LightingDataAsset | The lighting data asset used by the active Scene. |
| LightingExplorerTab | Create custom tabs for the Lighting Explorer. |
| LightingExplorerTableColumn | This is used when defining how a column should look and behave in the Lighting Explorer. |
| LightingWindowEnvironmentSection | Base class for the Inspector that overrides the Environment section of the Lighting window. |
| LightingWindowTab | Base class to add custom tabs to the Lighting window. |
| LightmapEditorSettings | This class is now obsolete. Use LightingSettings. |
| LightmapParameters | Configures how Unity bakes lighting and can be assigned to a LightingSettings instance or asset. |
| Lightmapping | Allows to control the lightmapping job. |
| Lightmapping | Experimental lightmapping features. |
| LightProbeGroupEditorUtility | Helper class to enable interaction with the in-scene Light Probe Group edit tool. You can leverage the methods provided by this class to build custom tooling surrounding LightProbeGroups. |
| ListRequest | Represents an asynchronous request to list the packages in the project. |
| LocalizationAttribute | An attribute to the assembly for Localization. |
| LocalizationGroup | This provides an auto dispose Localization system. This can be called recursively. |
| Location | Represents the location of a reported issue. |
| LODUtility | LOD Utility Helpers. |
| MainStage | The Main Stage contains all the currently open regular Scenes and is always available. |
| MainToolbar | Interface for the main toolbar of the Unity Editor. |
| MainToolbarButton | Describes the content and behaviour of a button element for the main toolbar. |
| MainToolbarDropdown | Describes the content and behaviour of a dropdown element for the main toolbar. |
| MainToolbarElement | Describes the content and behaviour of a main toolbar element. |
| MainToolbarElementAttribute | Registers a static method you can use to extend the main toolbar with custom UI elements. |
| MainToolbarLabel | A label element for the main toolbar. |
| MainToolbarSlider | A slider element for the main toolbar. |
| MainToolbarToggle | Describes the content and behaviour of a toggle element for the main toolbar. |
| ManagedDebugger | Representation of managed debugger in UnityEditor. |
| Mask64Field | Make a field for 64-bit masks. |
| MaskField | The MaskField is an Editor-only control that lets users select one or more options from a list of options. For more information, refer to UXML element MaskField. |
| MaterialAnalysisContext | A context object passed by a MaterialModule to a MaterialModuleAnalyzer's Analyze() method. |
| MaterialDescription | Contains a set of typed properties for describing a texture input of a MaterialDescription. |
| MaterialEditor | The Unity Material Editor. |
| MaterialModuleAnalyzer | Abstract base class for an Analyzer to be invoked by MaterialModule |
| MaterialProperty | Describes information and value of a single shader property. |
| MaterialPropertyDrawer | Base class to derive custom material property drawers from. |
| MaterialSettingsCallbackAttribute | This attribute is used as a callback to set SRP specific properties from the importer. |
| MediaEncoder | Encodes images and audio samples into an audio or movie file. |
| Menu | Provides methods to manipulate a menu item. |
| MenuCommand | Used to extract the context for a MenuItem. |
| MenuItem | The MenuItem attribute allows you to add menu items to the main menu and Inspector window context menus. |
| MeshAnalysisContext | A context object passed by MeshModule to a MeshModuleAnalyzer's Analyze() method. |
| MeshLodUtility | Utility methods and properties related to Mesh LOD creation and management. |
| MeshModuleAnalyzer | Abstract base class for an Analyzer to be invoked by MeshModule |
| MeshPreview | Use this class to render an interactive preview of a mesh. |
| MeshUtility | Various utilities for mesh manipulation. |
| Message | Messages from the version control system. |
| MiniMap | MiniMap. |
| ModelImporter | Model importer lets you modify model import settings from editor scripts. |
| ModelImporterClipAnimation | Animation clips to split animation into. |
| ModuleAnalyzer | Base class for all ModuleAnalyzers |
| MonoImporter | Represents a C# script in the project. |
| MonoScript | Representation of Script assets. |
| MultiColumnHeader | The MultiColumnHeader is a general purpose class that e.g can be used with the TreeView to create multi-column tree views and list views. |
| MultiColumnHeaderState | State used by the MultiColumnHeader. |
| NavMeshEditorHelpers | NavMesh utility functionality effective only in the Editor. |
| NavMeshVisualizationSettings | Represents the visualization state of the navigation debug graphics. |
| Node | The base class for all user-accessible nodes in a graph. |
| Node | Main GraphView node class. |
| Node<T0> | Class that holds elements of ICategorizable. |
| ObjectChangeEvents | Exposes events that allow you to track undoable changes to objects in the editor. |
| ObjectFactory | Use the DefaultObject to create a new UnityEngine.Object in the editor. |
| ObjectField | Object field used with the advanced search picker. |
| ObjectField | Makes a field to receive any object type. For more information, refer to UXML element ObjectField. |
| ObjectIndexer | A specialized SearchIndexer which provides methods to index a Unity Object from custom indexers. |
| ObjectNames | Helper class for constructing displayable names for objects. |
| ObjectOverride | Class with information about an object on a Prefab instance with overridden properties. |
| ObjectPreview | Base Class to derive from when creating Custom Previews. |
| ObjectSelectorEngineAttribute | Use this class attribute to register ObjectSelector search engines automatically. Search engines with this attribute must implement the IObjectSelectorEngine interface. |
| ObjectSelectorSearch | Use this API to select objects. Engines for this type of search implement the IObjectSelectorEngine interface. |
| ObjectSelectorSearchContext | A search context implementation for ObjectSelector search engines. All methods that are called on an ObjectSelector search engine, and expect a ISearchContext, receive an object of this type. |
| OnInspectorGUIContext | The context for drawing IMGUI elements pertaining to terrain tools brushes. |
| OnOpenAssetAttribute | Invokes a static callback method when the Unity Editor attempts to open an asset. |
| Overlay | Overlays are persistent and customizable panels and toolbars that are available within Editor Windows. Use Overlays to expose actions and tool options in a convenient and user-controllable way. |
| OverlayAttribute | Attribute used to register a class as an overlay. |
| OverlayCanvas | OverlayCanvas is a container for collections of Overlays. |
| OverlayToolbar | Base class for toolbar elements intended to be drawn in an Overlay. |
| PackageAnalysisContext | A context object passed by PackagesModule to a PackagesModuleAnalyzer's Analyze() method. |
| PackageCollection | A collection class that represents all packages in a Unity project, providing enumeration and error handling capabilities for package management operations. |
| PackageInfo | Structure describing a Unity package. |
| PackageManagerExtensions | This method allows you to add a custom extension to the package manager, enabling it to enhance or modify package management behavior. |
| PackageRegistrationEventArgs | Provides information about package registration changes that occur during Package Manager operations. |
| PackagesModuleAnalyzer | Abstract base class for an Analyzer to be invoked by PackagesModule |
| PackedAssets | An extension to the BuildReport class that tracks how Assets contribute to the size of the build. |
| Packer | Sprite Packer helpers. |
| PackerJob | Current Sprite Packer job definition. |
| PackOperationResult | Information containing the result of a package packing operation. This information includes the path to the generated tarball file. |
| PackRequest | Represents an asynchronous request to pack a package folder. |
| PaintDetailsToolUtility | Provides utility methods for painting details. |
| PaintTreesDetailsContext | Represents a context object for information used when scattering trees and detail objects across terrains. |
| ParsedQuery<T0,T1> | Provides methods to define an operation that can be used to filter a data set. |
| ParsedQuery<T0> | Provides methods to define an operation that can be used to filter a data set. |
| PhysicsDebugWindow | Displays the Physics Debug Visualization options.The Physics Debug Visualization is only displayed if this window is visible.Additional resources: PhysicsVisualizationSettings. |
| PhysicsVisualizationSettings | This class contains the settings controlling the Physics Debug Visualization. |
| Pill | The Pill class includes methods for creating and managing a VisualElement that resembles a capsule. The Pill class includes text, an icon, and two optional child VisualElements: one to the left of the pill, and one to the right of the pill. |
| PivotManager | Manages pivot mode, rotation, and other configurable settings of editor pivots. |
| Placemat | Allows interactive manipulation of elements (drag, hide) over a virtual placemat. |
| PlacematContainer | The GraphView layer for placemats. |
| PlatformIcon | Icon slot container. |
| PlatformIconKind | Icon kind wrapper. |
| PlayableOutputEditorExtensions | Editor extensions for all types that implement IPlayableOutput. |
| PlayerBuildInterface | Low level interface for building scripts for Unity. |
| PlayerConnectionGUI | This class contains methods to draw IMGUI Editor UI that relates to the Player Connection. |
| PlayerConnectionGUILayout | This class contains methods to draw and automatically layout IMGUI Editor UI that relates to the Player Connection. |
| PlayerConnectionGUIUtility | Miscellaneous helper methods for PlayerConnectionGUI. |
| PlayerSettings | Use Player settings to define how Unity builds and displays your final application. |
| PlayModeScenario | Base class for play mode scenario assets. This is used to configure the play mode behavior. |
| PlayModeScenarioManager | Manages the lifecycle of Play Mode Scenarios, which define custom behaviors for entering and exiting Play mode, such as launching multiple Player instances. |
| PlayModeWindow | Class containing methods to interact with the selected Unity PlayModeView (GameView, Simulator). |
| Plugin | The plug-in class describes the currently active version control plug-in and its configuration options. |
| PluginImporter | Represents a plugin importer. |
| PopupWindow | Class used to display popup windows that inherit from PopupWindowContent. |
| PopupWindowContent | Class used to implement content for a popup window. |
| Port | GraphView Port class. |
| PortSource<T0> | Port source. |
| PostProcessBuildAttribute | Add this attribute to a method to get a notification just after building the player. |
| PostProcessSceneAttribute | Add this attribute to a method to get a notification just after building the Scene. |
| PrefabOverride | Class with information about a given override on a Prefab instance. |
| PrefabReplacingSettings | Settings controlling the behavior of PrefabUtility.ReplacePrefabAssetOfPrefabInstance. |
| PrefabStage | The PrefabStage class represents an editing context for Prefab Assets. |
| PrefabStageUtility | Utility methods related to Prefab stages. |
| PrefabUtility | Utility class for any Prefab related operations. |
| PreloadInfo | Container for holding a list of preload objects for a Scene to be built. |
| Preset | A Preset contains default values for an Object. |
| PresetSelector | This class implements a modal window that selects a Preset asset from the Project. |
| PreviewSceneStage | The PreviewSceneStage class represents an editing context based on a single preview Scene. |
| PrimitiveBoundsHandle | Base class for a compound handle to edit a bounding volume in the Scene view. |
| ProcessService | *This is an experimental feature.* The ProcessService allows you to start slave instance of UnityEditor, opened to the same Project as the master instance, with a specific RoleProviderAttribute. |
| ProfilerEditorUtility | A Utility class for Profiler tooling in the Unity Editor. |
| ProfilerModule | Represents a Profiler module in the Profiler window. |
| ProfilerModuleMetadataAttribute | Provides metadata related to a ProfilerModule, such as its name and icon path. |
| ProfilerModuleViewController | Provides a single view of content for a ProfilerModule displayed in the Profiler window. |
| ProfilerTimeSampleSelection | An object describing a selection made in a frame time sample based Profiler module. |
| ProfilerWindow | Use the ProfilerWindow class for interactions with the Profiler Window such as checking which frame it currently shows and controlling the selected Profiler sample in the CPU or GPU Usage Modules. |
| Progress | The Progress utility class reports the progress of asynchronous tasks to Unity. |
| ProjectAuditor | The ProjectAuditor class is responsible for auditing the Unity project. |
| ProjectBindDrawer | A container that fetches the UIElements that draw the Project Binding UI, and subscribes to its events. |
| ProjectSearch | Use this API to perform searches in the Project. Engines for this type of search implement the IProjectSearchEngine interface. |
| ProjectSearchContext | A search context implementation for Project search engines. All methods that are called on a Project search engine, and expect a ISearchContext, receive an object of this type. |
| ProjectSearchEngineAttribute | A class attribute that registers Project search engines automatically. Search engines with this attribute must implement the IProjectSearchEngine interface. |
| PropertyDatabase | The PropertyDatabase is a system that can store, in a thread-safe manner, properties of different kinds into a single file that we call a property database. |
| PropertyDrawer | Base class to derive custom property drawers from. Use this to create custom drawers for your own Serializable classes or for script variables with custom PropertyAttributes. |
| PropertyField | A SerializedProperty wrapper VisualElement that, on Bind(), will generate the correct field elements with the correct binding paths. For more information, refer to UXML element PropertyField. |
| PropertyModification | Defines a single modified property. |
| Provider | This class provides access to the version control API. |
| ProviderSettingsEditor | This is a custom Editor base for Provider Settings. It displays provider general settings and you can use it to extend provider settings editors to display custom provider settings. |
| PurchasingSettings | Editor API for the Unity Services editor feature. Normally Purchasing is enabled from the Services window, but if writing your own editor extension, this API can be used. |
| QueryBlock | A query block is the visual element of a query node in a query. |
| QueryEngine | A QueryEngine defines how to build a query from an input string. It can be customized to support custom filters and operators. Default query engine of type object. |
| QueryEngine<T0> | A QueryEngine defines how to build a query from an input string. It can be customized to support custom filters and operators. |
| QueryEngineFilterAttribute | Base attribute class used to define a custom filter on a QueryEngine. All filter types supported by QueryEngine.AddFilter are supported by this attribute. |
| QueryEngineParameterTransformerAttribute | Base attribute class that defines a custom parameter transformer function. |
| QueryError | A QueryError holds the definition of a query parsing error. |
| QueryGraph | Class that represents a query graph. |
| QueryListBlock | A query list block represents a special query block that will list a set of value for a given filter. |
| QueryListBlockAttribute | This attribute can be used on a class deriving from QueryListBlock to display in query builder mode a special block that will propose a fixed set of values when clicked. |
| RadeonRaysContext | RadeonRaysContext implements the IDeviceContext interface. It uses the RadeonRays SDK for ray-triangle intersection testing and the OpenCL 1.2 API for computations. |
| RadeonRaysProbeIntegrator | RadeonRays-based light probe integrator. |
| RadeonRaysProbePostProcessor | RadeonRaysProbePostProcessor is a post processor for light probes. It provides common operations for light probes encoded as SphericalHarmonicsL2. Operations include radiance to irradiance conversion, conversion to the format expected by Unity for rendering (refer to IProbePostProcessor.ConvertToUnityFormat), addition, and scaling. |
| RadeonRaysWorld | RadeonRays integration world. |
| RawFrameDataView | Provides access to the Profiler data for a specific frame and thread. |
| RectangleSelector | Rectangle selection box manipulator. |
| RectUtils | Utilities for rectangle selections. |
| ReferenceProbePostProcessor | ReferenceProbePostProcessor is a post processor for light probes. The ReferenceProbePostProcessor implements the IProbePostProcessor interface. |
| RegistryInfo | Contains information about the package registry from which a package was installed, including the registry name and URL. |
| RemovedComponent | Class with information about a component that has been removed from a Prefab instance. |
| RemovedGameObject | Class with information about a GameObject that has been removed from a Prefab instance. |
| RemoveIfAttribute | Remove the specified shader keywords from the build if the data field matches the condition. |
| RemoveIfNotAttribute | Remove the specified shader keywords from the build if the data field doesn't match the condition. |
| RemoveOrSelectAttribute | Either remove or include the specified shader keywords in the build, depending on the data field underneath. |
| RemoveRequest | Represents an asynchronous request to remove a package from the project. |
| RenderingLayerMaskField | Drawer for RenderingLayerMask. |
| RenderingLayersLimitSettings | Define a number of supported Rendering Layers on the Render Pipeline. |
| RenderPipelineEditorUtility | Helper class that contains a utility function on ScriptableRenderPipeline for Editor. |
| RenderPipelineGraphicsSettingsEditorUtility | Helper class that contains a utility function on IRenderPipelineGraphicsSettings for Editor. |
| Report | Report contains a list of all issues found by ProjectAuditor. |
| ReportItem | Describes an issue that ProjectAuditor reports in the Unity project. |
| ReportItemBuilder | Provides methods to construct a ReportItem object for a Report. |
| RepositoryInfo | Information about a repository that contains the source code of a package, including the repository type and URL. |
| Request | Base class for all Package Manager asynchronous operations. Use this class to track the status and results of package operations, such as adding, removing, or updating packages. |
| Request<T0> | Tracks the state of an asynchronous Unity Package Manager (Upm) server operation that returns a non-empty response. |
| ReserveModifiersAttribute | Provides an attribute that reserves one or multiple modifiers for a specific shortcut. |
| ResetToEditorDefaultsRequest | Represents an asynchronous request to reset the project packages to the current Editor default configuration. |
| ResizableElement | Instantiates a [ResizableElement] that you add as a child of the [VisualElement] that you want to resize. |
| Resizer | Resizer manipulator element. |
| ResponseFileData | Data class used for storing parsed response file data. |
| RoleProviderAttribute | An attribute used to decorate function that defines how a slave process can interact with a main instance of Unity. |
| Rule | Represents a rule which modifies the Severity of an Issue ReportItem or all of the ProjectIssues that share a Descriptor. |
| RunAfterAssemblyAttribute | Add this attribute to a callback method to mark that this callback must be run after any callbacks that are part of the specified assembly. |
| RunAfterClassAttribute | Add this attribute to a callback method to mark that this callback must be run after any callbacks that are part of the specified class. |
| RunAfterPackageAttribute | Add this attribute to a callback method to mark that this callback must be run after any callbacks that are part of the specified package. |
| RunBeforeAssemblyAttribute | Add this attribute to a callback method to indicate that this callback must be run before any callbacks that are part of the specified assembly. |
| RunBeforeClassAttribute | Add this attribute to a callback method to mark that this callback must be run before any callbacks that are part of the specified class. |
| RunBeforePackageAttribute | Add this attribute to a callback method to mark that this callback must be run before any callbacks that are part of the specified package. |
| SaveData | A serializable storage for the state of an Overlay. |
| SceneAsset | SceneAsset is used to reference Scene objects in the Editor. |
| SceneBundleInfo | Container for holding asset loading information for a streamed Scene AssetBundle to be built. |
| SceneCullingMasks | Masks that control what kind of Scene views and Game views Unity should render a GameObject in. |
| SceneLoadInfo | Container for holding preload information for a given serialized Scene in an AssetBundle. |
| SceneQueryEngineFilterAttribute | Custom attribute is used to customize the search engine used by the scene search provider. |
| SceneQueryEngineParameterTransformerAttribute | Attribute class that defines a custom parameter transformer function applied for a query running in a scene provider defined by a scene custom filter using SceneQueryEngineFilterAttribute. |
| SceneSearch | Use this API to perform searches in the Scene. Engines for this type of search implement the ISceneSearchEngine interface. |
| SceneSearchContext | A search context implementation for Scene search engines. All methods that are called on a Scene search engine, and expect a ISearchContext, receive an object of this type. |
| SceneSearchEngineAttribute | A class attribute that registers Scene search engines automatically. Search engines with this attribute must implement the ISceneSearchEngine interface. |
| SceneSetup | The setup information for a Scene in the SceneManager. This cannot be used in Play Mode. |
| ScenesUsingAssets | An extension to the BuildReport class that tracks which scenes in the build have references to a specific asset in the build. |
| SceneTemplateAsset | An Asset that stores everything required to instantiate a new Scene from a templated Scene. |
| SceneTemplatePipelineAdapter | An adapter that implements all the functions of ISceneTemplatePipeline for easier usage. Use it to partially override a ISceneTemplatePipeline. |
| SceneTemplateService | A utility class that manages SceneTemplateAsset instantiation. |
| SceneView | Use this class to manage SceneView settings, change the SceneView camera properties, subscribe to events, call SceneView methods, and render open scenes. |
| SceneViewCameraWindow | Use this class to instantiate a SceneViewCameraWindow window. |
| SceneVisibilityManager | Manages Scene Visibility in the editor. |
| Scope | This class allows for nodes to be grouped into a common area, or Scope. This class includes methods that automatically resize and position the Scope to encompass the group of nodes. |
| ScriptableBakedReflectionSystem | Empty implementation of IScriptableBakedReflectionSystem. |
| ScriptableBakedReflectionSystemSettings | Global settings for the scriptable baked reflection system. |
| ScriptablePacker | ScriptablePacker Interface. Provides a custom implementation to pack sprites into textures. This is the Scriptable Packer interface. |
| ScriptableSingleton<T0> | Generic class for storing Editor state. |
| ScriptableWizard | Derive from this class to create an editor wizard. |
| ScriptCompilerOptions | Compiler options passed to the script compiler. |
| ScriptedImporter | Abstract base class for custom Asset importers. |
| ScriptedImporterAttribute | Class attribute used to register a custom asset importer derived from ScriptedImporter with Unity's Asset import pipeline. |
| ScriptedImporterEditor | Default editor for source assets handled by Scripted Importers. |
| SearchAction | Defines an action that can be applied on a SearchItem of a specific search provider type. |
| SearchActionsProviderAttribute | Attribute used to declare a static method that defines new actions for specific search providers. |
| SearchColumn | Search columns are used to display additional information in the Search Table view. |
| SearchColumnProviderAttribute | The search column provider attribute is used to define new formats for a given column. |
| SearchContext | The search context includes all the data necessary to perform a query. It allows the full customization of how a query may be performed. |
| SearchExpression | Search expressions allow you to add to the search query language to express complex queries that cross-reference multiple providers, for example, to search for all objects in a scene that use a shader that doesn’t compile.Search expressions can be chained together to transform or perform set manipulations on Search Items.The manual contains example on How to use Search Expression . |
| SearchExpressionEvaluatorAttribute | Attribute used to register new SearchExpressionEvaluator. This will allow to use new function in SearchExpression. As a side note all builtin evaluators (count{}, select{}, ...) are defined using this attribute. |
| SearchExpressionEvaluatorSignatureOverloadAttribute | Allows user to add more function signature overload to a SearchExpressionEvaluatorAttribute. |
| SearchField | The SearchField control creates a text field for a user to input text that can be used for searching. |
| SearchFieldBase<T0,T1> | The base class for a search field. |
| SearchIndexer | Base class for a document Indexer which provides methods for retrieving a document given a specific pattern in roughly log(n). This allows you to search a large index more quickly. |
| SearchItem | Search items are returned by the search provider to show to the user after a search is performed. The search item holds all the data that is used to sort and present the search results. Some members of a SearchItem can be specified in an asynchronous callback (see SearchItem.fetchThumbnail, SearchItem.fetchDescription, etc). |
| SearchItemProviderAttribute | Attribute used to declare a static method that will create a new search provider at load time. |
| SearchMonitor | The search monitor is responsible to track any changes that occurs in Unity in order to update search indexes or other search data structure at runtime. |
| SearchPropositionFlagsExtensions | Search proposition flags extension used to manipulate flag bits. |
| SearchPropositionOptions | Search proposition options are used define how search propositions are fetched and displayed. |
| SearchProvider | SearchProvider manages search for specific types of items and manages all fields of a SearchItem such as thumbnails, descriptions, subfilters. |
| SearchQueryError | Represents a query parsing error. |
| SearchRequest | Represents an asynchronous request to find a package. |
| SearchSelection | Provides methods to give readonly access to the current list of selected items in Search. |
| SearchSelectorAttribute | Search selector attribute used to define how a custom value can be selected from a search item. |
| SearchService | Principal Search API to initiate searches and fetch results. |
| SearchSettings | Search settings give access to the user global preferences regarding Search. |
| SearchTable | A search table configuration is used to define the columns when search results are displayed in table view. |
| SearchTreeEntry | This class describes a search tree entry. The search window displays search tree entries in the GraphView. |
| SearchTreeGroupEntry | This class describes group entries in the search tree. The search tree is displayed in the search window. |
| SearchUtils | Provides various utility functions that are used by SearchProvider. |
| SearchViewState | Search view state is used to create new Search windows. See SearchService.ShowWindow. |
| SearchWindow | This subclass displays a searchable menu of available graph nodes. |
| SelectIfAttribute | Include only the specified shader keywords in the build if the data field matches the condition. |
| SelectIfNotAttribute | Include only the specified shader keywords in the build if the data field doesn't match the condition. |
| Selection | Access to the selection in the editor. |
| SelectionDragger | Selection dragger manipulator. |
| SelectionDropper | Selection drag&drop manipulator. |
| SelectOrRemoveAttribute | Either include or remove the specified shader keywords in the build, depending on the data field underneath. |
| SerializationInfo | Container for holding object serialization order information for a build. |
| SerializationUtility | Utility functions related to Serialization. |
| SerializedObject | SerializedObject and SerializedProperty are classes for editing serialized fields on Unity objects in a completely generic way. These classes automatically handle dirtying individual serialized fields so they will be processed by the Undo system and styled correctly for Prefab overrides when drawn in the Inspector. |
| SerializedObjectChangeEvent | An event sent when any value in a SerializedObject changes |
| SerializedProperty | SerializedProperty and SerializedObject are classes for editing properties on objects in a completely generic way that automatically handles undo, multi-object editing and Prefab overrides. |
| SerializedPropertyChangeEvent | An event sent when a value in a PropertyField changes. |
| SessionState | SessionState is a Key-Value Store intended for storing and retrieving Editor session state that should survive assembly reloading. |
| SettingsAnalysisContext | A context object passed by SettingsModule to a SettingsModuleAnalyzer's Analyze() method. |
| SettingsModuleAnalyzer | Abstract base class for an Analyzer to be invoked by SettingsModule |
| SettingsProvider | SettingsProvider is the configuration class that specifies how a Project setting or a preference should appear in the Settings or Preferences window. |
| SettingsProviderAttribute | Attribute used to register a new SettingsProvider. Use this attribute to decorate a function that returns an instance of a SettingsProvider. If the function returns null, no SettingsProvider appears in the Settings window. |
| SettingsProviderGroupAttribute | Attribute used to register multiple SettingsProvider items. Use this attribute to decorate a function that returns an array of SettingsProvider instances. If the function returns null, no SettingsProvider appears in the Settings window. |
| SettingsService | This class provides global APIs to interact with the Settings window. |
| ShaderAnalysisContext | A context object passed by ShadersModule to a ShaderModuleAnalyzer's Analyze() method. |
| ShaderData | This class describes a shader. |
| ShaderGUI | Abstract class to derive from for defining custom GUI for shader properties and for extending the material preview. |
| ShaderImporter | Shader importer lets you modify shader import settings from Editor scripts. |
| ShaderInclude | Shader include file asset. |
| ShaderModuleAnalyzer | Abstract base class for an Analyzer to be invoked by ShaderModule |
| ShaderUtil | Utility methods to assist with working with shaders from the Editor. |
| ShortcutAttribute | Registers a static method as the action for an action shortcut. |
| ShortcutBaseAttribute | Abstract base class for ShortcutAttribute and ClutchShortcutAttribute. |
| ShortcutHandler | Shortcut handler. |
| ShortcutManager | Provides access to an instance of IShortcutManager for managing shortcuts. |
| SimulatorAdaptivePerformanceSubsystem | The subsystem is used for simulating Adaptive Performance in the Editor with the Device Simulator. It is also used for Adaptive Performance tests and to simulate Adaptive Performance when it is not available on the hardware you work with. |
| SimulatorProviderConstants | Static constants for the Simulator Provider. |
| SimulatorProviderLoader | SimulatorProviderLoader implements the loader for the Adaptive Performance Device Simulator plugin. |
| SimulatorProviderSettings | Provider Settings for Simulator Provider which controls the editor runtime asset instance which stores the Settings. |
| SimulatorProviderSettingsEditor | This is custom Editor for Simulator Provider Settings. |
| SketchUpImporter | Derives from AssetImporter to handle importing of SketchUp files. |
| SketchupMaterialDescriptionPreprocessor | This is a default implementation for AssetPostProcessor.OnPreprocessMaterialDescription, this implementation converts material descriptions imported from Sketchup assets into materials for the internal rendering pipeline. |
| SourceTextureInformation | Original texture data information. |
| SpeedTree9Importer | Represents the SpeedTree 9 asset importer, providing methods for processing and post-processing SpeedTree assets during import. |
| SpeedTreeImporter | AssetImporter for importing SpeedTree model assets. |
| SphereBoundsHandle | A compound handle to edit a sphere-shaped bounding volume in the Scene view. |
| SpriteAtlasAnalysisContext | A context object passed by SpriteAtlasModule to a SpriteAtlasModuleAnalyzer's Analyze() method. |
| SpriteAtlasAsset | SpriteAtlasAsset stores inputs for generating SpriteAtlas and generates atlas textures on Import. |
| SpriteAtlasExtensions | Method extensions for SpriteAtlas in Editor. |
| SpriteAtlasImporter | SpriteAtlasImporter imports SpriteAtlasAsset and generates SpriteAtlas. |
| SpriteAtlasModuleAnalyzer | Abstract base class for an Analyzer to be invoked by SpriteAtlasModule |
| SpriteAtlasUtility | Utility methods to pack atlases in the Project. |
| SpriteEditorExtension | Sprite extension methods that are accessible in Editor only. |
| SpriteUtility | Helper utilities for accessing Sprite data. |
| StackNode | Use this class to customize StackNodes and to manage dragging GraphElements over StackNodes. |
| Stage | The Stage class represents an editing context which includes a collection of Scenes. |
| StageUtility | Utility methods related to stages. |
| StateMachineBehaviourContext | This class contains all the owner's information for this State Machine Behaviour. |
| StaticOcclusionCulling | StaticOcclusionCulling lets you perform static occlusion culling operations. |
| StaticOcclusionCullingVisualization | Used to visualize static occlusion culling at development time in Scene view. |
| StickyNote | Instantiates a [GraphElement] used for comment text. |
| StickyNoteChangeEvent | The event sent when a [StickyNote] was changed. |
| StrippingInfo | The StrippingInfo object contains information about which native code modules in the engine are still present in the build, and the reasons why they are still present. |
| SubgraphAttribute | Attribute used to define a link between a subgraph type and a main graph type. |
| SVGImporter | The SVG importer class. |
| Sysroot | Base class for implementing sysroots and toolchains for IL2CPP |
| TagConstraintAttribute | Enable or disable shader keyword filter attributes based on shader tags. |
| TagField | A TagField editor. For more information, refer to UXML element TagField. |
| Task | A Task describes an instance of a version control operation. |
| TerrainDetailMeshWizard | Provides methods for displaying the detail mesh wizard. |
| TerrainDetailTextureWizard | Provides methods for displaying the detail texture wizard. |
| TerrainInspectorUtility | Utility class for Terrain Inspector GUI. |
| TerrainLayerInspector | The default Inspector class for Terrain Layer. |
| TerrainLayerUtility | A set of helper functions for using terrain layers. |
| TerrainPaintTool<T0> | Base class for terrain painting tools. |
| TerrainPaintToolWithOverlays<T0> | Base class for Terrain painting tools, which inherit from Editor Tools. |
| TerrainPaintToolWithOverlaysBase | The abstract class that TerrainPaintToolWithOverlays inherits from. |
| TerrainPaintUtilityEditor | Terrain paint utility editor helper functions. |
| TerrainToolShortcutContext | The shortcut context that is active while editing Terrain. |
| TerrainWizard | Provides methods for displaying the terrain wizard. |
| TextureAnalysisContext | A context object passed by a TextureModule to a TextureModuleAnalyzer's Analyze() method. |
| TextureGenerator | Experimental utilities for generating Texture2D. |
| TextureImporter | Texture importer lets you modify Texture2D import settings from editor scripts. |
| TextureImporterPlatformSettings | Stores platform specifics settings of a TextureImporter. |
| TextureImporterSettings | Stores settings of a TextureImporter. |
| TextureModuleAnalyzer | Abstract base class for an Analyzer to be invoked by TextureModule |
| ThreeDSMaterialDescriptionPreprocessor | This is a default implementation for AssetPostProcessor.OnPreprocessMaterialDescription, this implementation converts material descriptions imported from .3DS assets into materials for the internal rendering pipeline. |
| TileBaseEditor | Default editor for TileBase assets. |
| TileEditor | Default editor for Tile assets. |
| TokenNode | The TokenNode class includes methods for creating and managing a Node that resembles a capsule. The TokenNode class includes a title, an icon, one input Port, and one output Port. |
| ToolAttribute | Base class from which EditorToolAttribute and EditorToolContextAttribute inherit. |
| Toolbar | A toolbar for tool windows. For more information, refer to UXML element Toolbar. |
| ToolbarBreadcrumbs | Creates a breadcrumb UI element for the toolbar to help users navigate a hierarchy. For example, the visual scripting breadcrumb toolbar makes it easier to explore scripts because users can jump to any level of the script by clicking a breadcrumb item. For more information, refer to UXML element ToolbarBreadcrumbs. |
| ToolbarButton | Editor-only control that serves as a button in a Toolbar. |
| ToolbarMenu | A drop-down menu for the toolbar. For more information, refer to UXML element ToolbarMenu. |
| ToolbarMenuElementExtensions | An extension class that handles menu management for elements that are implemented with the IToolbarMenuElement interface, but are identical to DropdownMenu. |
| ToolbarOverlay | ToolbarOverlay is an implementation of Overlay that provides a base for Overlays that can be placed in horizontal or vertical toolbars. |
| ToolbarPopupSearchField | The pop-up search field for the toolbar. The search field includes a menu button. For more information, refer to UXML element ToolbarPopupSearchField. |
| ToolbarSearchField | A search field for the toolbar. For more information, refer to UXML element ToolbarSearchField. |
| ToolbarSpacer | A toolbar spacer of static size. For more information, refer to UXML element ToolbarSpacer. |
| ToolbarToggle | A toggle for the toolbar. For more information, refer to UXML element ToolbarToggle. |
| ToolManager | This class manipulates editor tools in the Scene view. |
| Tools | Class used to manipulate the tools used in Unity's Scene View. |
| TransformUtils | Editor Transform Utility Class. |
| TreeView<T0> | The TreeView is an IMGUI control that lets you create tree views, list views and multi-column tables for Editor tools. |
| TreeViewItem<T0> | The TreeViewItem is used to build the tree representation of a tree data structure. |
| TreeViewState<T0> | The TreeViewState contains serializable state information for the TreeView. |
| TrueTypeFontImporter | AssetImporter for importing Fonts. |
| TypeCache | Provides methods for fast type extraction from assemblies loaded into the Unity Domain. |
| TypeDB | Container for holding information about script type and property data. |
| Undo | Lets you register undo operations on specific objects you are about to perform changes on. |
| UnityEventTools | Editor tools for working with persistent UnityEvents. |
| UnityLinkerBuildPipelineData | Contains information for various IUnityLinkerProcessor callbacks. |
| Unwrapping | Utility class for computing mesh UVs. |
| UsageDial | Usage Dial is a VisualElement to display a values with a color dial. |
| UseWithContextAttribute | Attribute used to indicate which types of ContextNode can contain a given BlockNode type. |
| UseWithGraphAttribute | Attribute used to specify which Graph types are compatible with the decorated Node class. |
| Utility | Editor utility functions for the Playable graph and its nodes. |
| UxmlAttributeConverter<T0> | Converts a UxmlAttribute type to and from a string. |
| UxmlNamespacePrefixAttribute | Attribute that can be used on an assembly to define an XML namespace prefix for a namespace. |
| UxmlSerializedDataCreator | Editor utility methods for dealing with UxmlSerializedData. |
| UxmlUpgradeService | Service for applying UXML upgrades to VisualTreeAsset. |
| VersionControlAttribute | Allows you to mark a class as a version control system object. |
| VersionControlDescriptor | Contains unique version control system name. |
| VersionControlManager | Manages version control systems. |
| VersionControlObject | The abstract base class for representing a version control system. |
| VersionControlUtils | Contains version control system specific utility methods. |
| VersionsInfo | Contains information about available versions of a package, including compatible, latest, and recommended versions. |
| VideoClipImporter | VideoClipImporter lets you modify VideoClip import settings from Editor scripts. |
| VideoImporterTargetSettings | Importer settings that can have platform-specific values. |
| Viewpoint<T0> | Defines a Viewpoint that can be selected from the Cameras overlay. |
| WriteCommand | Container for holding information about a serialized file to be written. |

### Structs

| Struct | Description |
| --- | --- |
| ActiveProfileChangedEventArgs | Provides data for the IShortcutManager.activeProfileChanged event. |
| AdvancedObjectSelectorParameters | Struct containing the different parameters passed to the advanced object selector. |
| AlbedoSwatchInfo | Contains the custom albedo swatch data. |
| AnimatorCondition | Condition that determines if a transition is taken. |
| ArtifactKey | An ArtifactKey is used for specifying an artifact to lookup or produce. |
| AssemblyDefinitionPlatform | Contains information about a platform supported by the assembly definition files. |
| AssetBundleBuild | AssetBundle building map entry. |
| AssetIndexChangeSet | Defines a set of changes that happens in order to update a search asset index. |
| AtlasSettings | Describes the final atlas texture. |
| AudioImporterSampleSettings | This structure contains a collection of settings used to define how an AudioClip should be imported. |
| AudioTrackAttributes | Descriptor for audio track format. |
| BuildAssetBundlesParameters | Provide various options to control the behavior of BuildPipeline.BuildAssetBundles. |
| BuildFile | Contains information about a single file produced by the build process. |
| BuildPlayerOptions | Provide various options to control the behavior of BuildPipeline.BuildPlayer. |
| BuildPlayerWithProfileOptions | Provide various options to control the behavior of BuildPipeline.BuildPlayer when using a build profile. |
| BuildSettings | Struct containing information on how to build content. |
| BuildStep | Contains information about a single step in the build process. |
| BuildStepMessage | Contains information about a single log message recorded during the build process. |
| BuildSummary | Contains overall summary information about a build. |
| BuildUsageTagGlobal | Container for holding information about lighting information being used in a build. |
| CacheServerConnectionChangedParameters | Struct used for AssetDatabase.cacheServerConnectionChanged. |
| CameraProjectionCache | Project points from world to screen space. |
| ChangeAssetObjectPropertiesEventArgs | A change of this type indicates that a property of an asset object in memory has changed. This happens for example when Undo.RecordObject is used with an instance of an asset (e.g. Texture). Note that this only covers changes to asset objects in memory and not changes to assets in the project on disk. |
| ChangeChildrenOrderEventArgs | A change of this type indicates that a GameObject's children have been reordered. This happens when Undo.RegisterChildrenOrderUndo is called or when reordering a child in the hierarchy under the same parent. |
| ChangeGameObjectOrComponentPropertiesEventArgs | A change of this type indicates that a property of a GameObject or Component has changed. This happens for example when Undo.RecordObject is used with an instance of a Component. |
| ChangeGameObjectParentEventArgs | A change of this type indicates that the parent of a GameObject has changed. This happens when Undo.SetTransformParent or SceneManager.MoveGameObjectToScene is used. |
| ChangeGameObjectStructureEventArgs | A change of this type indicates that the structure of a GameObject has changed. This happens when a component is added to or removed from the GameObject using Undo.AddComponent or Undo.DestroyObjectImmediate. |
| ChangeGameObjectStructureHierarchyEventArgs | A change of this type indicates that the structure of a GameObject has changed and any GameObject in the hierarchy below it might have changed. This happens for example when Undo.RegisterFullObjectHierarchyUndo is used. |
| ChangeRootOrderEventArgs | A change of this type indicates that a GameObject placed at the scene root has been reordered. This happens when Undo.SetSiblingIndex is called or when reordering a root GameObject in the hierarchy under the same parent. |
| ChangeSceneEventArgs | A change of this type indicates that an open scene has been changed ("dirtied") without any more specific information available. This happens for example when EditorSceneManager.MarkSceneDirty is used. |
| ChannelClientInfo | A structure that contains all of a ChannelClient's connection data. |
| ChannelClientScope | Scope that can be use to open a channel client on a specific channel and close the channel when the scope ends. |
| ChannelInfo | A structure that contains the connection information of a Channel in ChannelService. |
| ChannelScope | Scope that cna be use to open a channel and that will close the channel when the scope ends. |
| ChildAnimatorState | Structure that represents a state in the context of its parent state machine. |
| ChildAnimatorStateMachine | Structure that represents a state machine in the context of its parent state machine. |
| ChildMotion | Structure that represents a motion in the context of its parent blend tree. |
| ClipAnimationInfoCurve | Stores a curve and its name that will be used to create additional curves during the import process. |
| CompilerMessage | Compiler Message. |
| ContentBuildProfileEvent | Details about a profile event captured using the ContentBuildInterface.BeginProfileCapture and ContentBuildInterface.EndProfileCapture APIs. |
| CreateAssetObjectEventArgs | A change of this type indicates that an asset object has been created. This happens for example when Undo.RegisterCreatedObjectUndo is used with an instance of an asset (e.g. Texture). Note that this only covers creation of asset objects in memory and not creation of new assets in the project on disk. |
| CreateGameObjectHierarchyEventArgs | A change of this type indicates that a GameObject has been created, possibly with additional objects below it in the hierarchy. This happens for example when Undo.RegisterCreatedObjectUndo is used with a GameObject. |
| CurveFilterOptions | The keyframe reduction settings for compressing animation curves. |
| CustomObjectIndexerTarget | Represents a descriptor for the object that is about to be indexed. It stores a reference to the object itself as well as an already set up SerializedObject. |
| DataModeChangeEventArgs | Container for the different parameters of the IDataModeController.dataModeChanged event. |
| DefaultPreset | This structure defines a default Preset. See Preset.GetDefaultListForType and Preset.SetDefaultListForType for usage. |
| DependencyInfo | Structure that contains information about a package's dependencies, including the package name and version requirements. |
| DescriptorId | An unique identifier for an Issue Descriptor. IDs must have exactly 3 upper case characters, followed by 4 digits. |
| DestroyAssetObjectEventArgs | A change of this type indicates that an asset object has been destroyed. This happens for example when Undo.DestroyObjectImmediate is used with an instance of an asset (e.g. Texture). Note that this only covers destruction of asset objects in memory and not deletion of assets in the project on disk. |
| DestroyGameObjectHierarchyEventArgs | A change of this type indicates that a GameObject and the entire hierarchy below it has been destroyed. This happens for example when Undo.DestroyObjectImmediate is used with an GameObject. |
| DetailBrushBounds | Represents a container for brush bound data. |
| DragAndDropWindowTarget | IDs for core windows. These are used by the DragAndDrop.RemoveHandler API. |
| EditorCurveBinding | Identifies an animatable property on a Component or GameObject. |
| ExternalFileReference | Desribes an externally referenced file. This is returned as part of the WriteResult when writing a serialized file. |
| GameManagerDependencyInfo | Contains dependency information for internal Unity game manager classes. Call ContentBuildInterface.WriteGameManagersSerializedFile or ContentBuildInterface.CalculatePlayerDependenciesForGameManagers to get an instance of this class. |
| GlobalObjectId | Unique and stable project-scoped identifier for objects in scenes and in other types of assets for use at authoring time. |
| GpuBvhBuildOptions | Options for bounding volume hierarchy (BVH) build. |
| GpuBvhPrimitiveDescriptor | Characteristics of a primitive used in the BVH build. |
| GraphViewChange | Set of changes in the graph that can be intercepted. |
| H264EncoderAttributes | Descriptor for H.264 encoder attributes. |
| ImportResultID | Uniquely identifies a product of an Import operation performed on an Asset Source by an Importer class. |
| InSceneAssetInformation | Provides information related to an in-scene asset collected during a InSceneAssetUtility.CollectInSceneAssets call. |
| KeyCombination | Represents a combination of a non-modifier key and zero or more modifier keys. |
| MainToolbarContent | A descriptor for the visual content of a main toolbar element. |
| ManagedReferenceMissingType | Represents a managed reference object that has a missing type. |
| MediaRational | Rational number useful for expressing fractions precisely. |
| MediaTime | Time representation for use with media containers. |
| NamedBuildTarget | Build Target by name. This allows to describe and identify build targets that are not fully represented by BuildTargetGroup and BuildTarget. |
| NodeCreationContext | This struct represents the context when the user initiates creating a graph node. |
| ObjectChangeEventStream | Represents a stream of events that describes the changes applied to objects in memory over the course of a frame. |
| ObjectIdentifier | Struct that identifies a specific object project wide. |
| ObjectReferenceKeyframe | Keyframe to an Object reference. |
| ObjectSerializedInfo | Struct containing details about how an object was serialized. |
| PackedAssetInfo | Contains information about a range of bytes in a file in the build output. |
| ParseResult<T0> | A ParseResult represents the result of a parsing operation. |
| PickingIncludeExcludeEntityIdList | Represents a list of Unity Object and DOTS Entity IDs that picking algorithms can either consider or discard. |
| PresetType | Stores a type to which a Preset can be applied. |
| ProbeBakeRequest | The ProbeBakeRequest contains all the data needed to bake a collection of probes. Can be added to a BakeInput. |
| ProfilerCategoryInfo | Category information descriptor structure. |
| ProfilerCounterDescriptor | Provides a descriptor for a Profiler counter. |
| PropertyDatabaseRecordKey | The key of a record that is stored in the PropertyDatabase. |
| QueryFilterOperator | A QueryFilterOperator defines a boolean operator between a value returned by a filter and an operand inputted in the search query. |
| QueryGraphOptimizationOptions | Structure containing the different options used to optimize a query graph. |
| QueryToken | Represents a token of a query string. |
| QueryValidationOptions | Struct containing the available query validation options. |
| RenderPickingArgs | Provides information about what is expected to render during the current picking rendering callback. |
| RenderPickingResult | This struct contains information to notify Unity the outcome of this render picking callback. |
| ResourceFile | Details about a specific file written by the ContentBuildInterface.WriteSerializedFile or ContentBuildInterface.WriteSceneSerializedFile APIs. |
| Sample | Struct for a package's sample, which is accessible from the Details panel of the Package Manager window. |
| SceneDependencyInfo | Scene dependency information generated from the ContentBuildInterface.CalculatePlayerDependenciesForScene API. |
| SceneStateHash | This class contains hashes that represents the Scene state. |
| ScenesUsingAsset | Contains information about which scenes in a build have references to an Asset in the build. |
| ScriptCompilationResult | Struct with result information returned from the PlayerBuildInterface.CompilePlayerScripts API. |
| ScriptCompilationSettings | Struct containing information on how to build scripts. |
| SearchColumnCompareArgs | Search column compare arguments are used by SearchColumn.comparer to sort search results. |
| SearchColumnEventArgs | Search column event arguments are used by SearchColumn.getter, SearchColumn.drawer and SearchColumn.setter delegates. |
| SearchDocument | Represents a searchable document that has been indexed. |
| SearchExpressionContext | This context encapsulate all the datas needed to evaluate a SearchExpression and it allows user to interact with the evaluation runtime of an expression. A SearchExpressionContext is created automatically with a SearchExpressionRuntime anytime SearchExpression.Execute is called. |
| SearchExpressionRuntime | Encapsulate all the runtime data needed to evaluate a root expression and all its parameters. This class contains the SearchContext that created the root SearchExpression and all the stack frames needed to evaluate all the nested SearchExpression. |
| SearchField | Search item field used by the property table and selector systems. |
| SearchMonitorView | Scoped search monitor view. |
| SearchProposition | Search propositions are used to display choices to the user to add new filters to a search query. |
| SearchResult | Contains a SearchItem that was retrieved from a query. |
| SearchSelectorArgs | Search selector arguments used when the search selector callback is invoked. |
| SearchValue | SearchValue is used to extend a QueryEngine with custom type parsers and filter operators to search results by value. |
| SearchWindowContext | This structure includes parameters for configuring the search window. |
| SerializableEnum<T0> | A wrapper to enable serialization of enums |
| SerializedLocation | Struct containing information about where an object was serialized. |
| ShaderBuildSettings | Settings configuration data for how the shaders are handled during the build process. |
| ShaderCompilerData | Collection of data used for shader variants generation, including targeted platform data and the keyword set representing a specific shader variant. |
| ShaderInfo | Contains the following information about a shader: -If the shader has compilation errors or warnings. -If the shader is supported on the currently selected platform. -The name of the shader. |
| ShaderMessage | Contains information about messages generated by Unity's Shader Compiler. |
| ShaderSnippetData | Collection of properties about the specific shader code being compiled. |
| ShortcutArguments | Provides data for shortcut action methods invoked by the shortcut system. |
| ShortcutBinding | Represents a key binding used to trigger a shortcut. |
| ShortcutBindingChangedEventArgs | Provides data for the IShortcutManager.shortcutBindingChanged event. |
| SketchUpImportCamera | Structure to hold camera data extracted from a SketchUp file. |
| SketchUpImportScene | Structure to hold scene data extracted from a SketchUp file. |
| SpriteAtlasPackingSettings | Settings to use during the packing process for this SpriteAtlas. |
| SpriteAtlasTextureSettings | Texture settings for the packed texture generated by SpriteAtlas. |
| SpriteImportData | Struct that represents how Sprite asset should be generated when calling TextureGenerator.GenerateTexture. |
| SpriteMetaData | Editor data used in producing a Sprite. |
| StageHandle | Struct that represents a stage handle. |
| StringView | Structure that holds a view on a string, with a specified range of [startIndex, endIndex[. |
| TakeInfo | A Takeinfo object contains all the information needed to describe a take. |
| TextureGenerationOutput | Structure that represents the result from calling TextureGenerator.GenerateTexture. |
| TextureGenerationSettings | Represents how a texture should be generated from calling TextureGenerator.GenerateTexture. |
| TexturePropertyDescription | Contains a set of typed properties for describing a texture input of a MaterialDescription. |
| TierSettings | A struct that represents graphics settings for a given build target and graphics tier. |
| TouchEvent | Representation of a single touch event coming from a Device Simulator. Subscribe to DeviceSimulator.touchScreenInput to receive these events. |
| UndoPropertyModification | Additional resources: Undo.postprocessModifications. |
| UndoRedoInfo | Additional resources: Undo.undoRedoEvent. |
| UnwrapParam | Unwrapping settings. |
| UpdatePrefabInstancesEventArgs | A change of this type indicates that prefab instances in an open scene have been updated due to a change to the source prefab. |
| VideoTrackAttributes | Descriptor for audio track format. |
| VideoTrackEncoderAttributes | Descriptor for video track format. |
| VP8EncoderAttributes | Descriptor for VP8 encoder attributes. |
| WriteManagerParameters | Defines the write parameters for the ContentBuildInterface.WriteGameManagersSerializedFile function. |
| WriteParameters | This struct collects all the WriteSerializedFile parameters in to a single place. |
| WriteResult | Struct containing the results from the ContentBuildPipeline.WriteSerialziedFile and ContentBuildPipeline.WriteSceneSerialziedFile APIs. |
| WriteSceneParameters | This struct collects all the WriteSceneSerializedFile parameters in to a single place. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| AdvancedObjectSelectorEventType | Enum that defines the type of events that are possible when calling a custom advanced object selector. |
| AnalysisResult | Identifiers for the results of analysis for a Module and for a whole Report |
| AndroidApplicationEntry | Options for which application entries to include when Unity generates a Gradle project. |
| AndroidArchitecture | Android CPU architecture. |
| AndroidAutoRotationBehavior | Options to control the application window orientation when Default orientation is set to Auto rotation. |
| AndroidBlitType | Describes the method for how content is displayed on the screen. |
| AndroidBuildSystem | Type of Android build system. |
| AndroidBuildType | Build configurations for the generated project. |
| AndroidDisplayOptions | Options to configure how your application renders on Android devices. |
| AndroidETC2FallbackOverride | This enumeration has values for different qualities to decompress an ETC2 texture on Android devices that don't support the ETC2 texture format. |
| AndroidGamepadSupportLevel | Gamepad support level for Android TV. |
| AndroidPreferredDataLocation | Preferred data location. |
| AndroidPreferredInstallLocation | Options for preferred storage location for the application installation on Android devices. |
| AndroidSdkVersions | The Android API levels to specify in scripts. |
| AndroidShowActivityIndicatorOnLoading | Application should show ActivityIndicator when loading. |
| AndroidSplashScreenScale | Android splash screen scale modes. |
| AnimatorConditionMode | Options for specifying the equality or comparison operator to evaluate a condition with. |
| AnimatorLayerBlendingMode | Specifies how the layer is blended with the previous layers. |
| ApiCompatibilityLevel | .NET API compatibility level. |
| AppleMobileArchitecture | Apple Mobile CPU architecture. |
| AppleMobileArchitectureSimulator | Apple mobile CPU architecture options for the Simulator. |
| Areas | Which area(s) of a project may be affected by a ReportItem. |
| AscentCalculationMode | Method used for calculating a font's ascent. |
| AssembliesType | Flags for Assembly. |
| AssemblyBuilderFlags | Flags used by AssemblyBuilder to control assembly build. |
| AssemblyBuilderStatus | Status of the AssemblyBuilder build. |
| AssemblyDefinitionReferenceType | Assembly definition file reference type. |
| AssemblyFlags | Flags for Assembly. |
| AssetDeleteResult | Result of Asset delete operation |
| AssetMoveResult | Result of Asset move |
| AssetPathToGUIDOptions | Asset path to GUID options. |
| AssetPipelineMode | Selects the Assetpipeline mode to use. |
| AudioSampleRateSetting | The sample rate setting used within the AudioImporter. This defines the sample rate conversion of audio on import. |
| BatchRendererGroupStrippingMode | Enum of the different modes of operation for BatchRendererGroup shader variant stripping. |
| BlendTreeType | The type of blending algorithm that the blend tree uses. |
| BrushGUIEditFlags | Flags that specify which brush controls the [IOnInspectorGUI.ShowBrushesGUI] method displays. |
| BuildAssetBundleOptions | Asset Bundle building options. |
| BuildOptions | Options to configure a build. You can combine multiple build options together. |
| BuildResult | Describes the outcome of the build process. |
| BuildTarget | Specifies the target platform for a Player or AssetBundle build. |
| BuildTargetGroup | Build target group. |
| BuildType | Build type. |
| CacheServerMode | Selects the cache server configuration mode. |
| CacheServerValidationMode | Options for the accelerate server validation mode. |
| CanAppendBuild | Whether you can append an existing build using BuildOptions.AcceptExternalModificationsToPlayer. |
| Capabilities | Capabilities used by Manipulators to easily determine valid actions on a GraphElement. |
| CheckoutMode | What to checkout when starting the Checkout task through the version control Provider. |
| ClipAnimationMaskType | AnimationClip mask options for ModelImporterClipAnimation. |
| CodeOptimization | Options for selecting the code optimization level to be used during code analysis. |
| CodeOptimization | Code optimization mode defines whether UnityEditor compiles scripts in Debug or Release mode. |
| CompilationMode | Options for the compilation mode Project Auditor should use when performing code analysis. |
| CompilerMessageType | Compiler message type. |
| CompletionAction | Different actions a version control task can do upon completion. |
| ContentBuildFlags | Build options for content. |
| CoppaCompliance | The enumerated states of the project's Coppa compliance setting. |
| D3D11FullscreenMode | Direct3D 11 fullscreen mode. |
| DataMode | Options for the different DataModes of an EditorWindow. |
| DependencyType | Dependency calculation flags to control what is returned, and how it operates. |
| DialogIconType | Specifies the icon to display in a dialog created with EditorDialog. |
| DialogOptOutDecisionType | Gives the user the option to stop the dialog box appearing again. This decision applies to the current user only. |
| DialogResult | The button chosen by a user when shown a dialog with EditorDialog.DisplayComplexDecisionDialog or EditorDialog.DisplayComplexDecisionDialogWithOptOut. |
| Direction | Port direction (in or out). |
| DisplayMode | Options for setting the display mode to use for a search view. |
| DockPosition | DockPosition describes the alignment of an Overlay within a DockZone. |
| DockZone | DockZone describes the area of the screen that an Overlay is displayed in. |
| DragAndDropVisualMode | Visual indication mode for Drag & Drop operation. |
| DrawCameraMode | Drawing modes for Handles.DrawCamera. |
| EditorActionResult | The state that the EditorAction was completed in. |
| EditorAssembliesCompatibilityLevel | .NET API compatibility level. |
| EditorSelectedRenderState | The editor selected render mode for Scene View selection. |
| EditorSkin | Enum that selects which skin to return from EditorGUIUtility.GetBuiltinSkin. |
| EnterPlayModeOptions | Determines the flags for the Enter Play Mode Options in the Unity Editor. |
| ErrorCode | An enumeration that defines the specific types of errors that can occur during Package Manager operations. |
| EventDataSerialization | The Serialization type for sending a message, with arguments, using the EventService. For more information about argument serialization, see ChannelService.Broadcast and ChannelService.Emit. |
| EventPropagation | Value that determines if a event handler stops propagation of events or allows it to continue. |
| ExportPackageOptions | Export package option. Multiple options can be combined together using the | operator. |
| FetchPreviewOptions | Options for the search provider on how the preview should be fetched. |
| FileMode | Mode of the file. |
| FileType | Enum description of the type of file an object comes from. |
| FilterAction | Whether shader keyword filter attributes include the keywords, remove the keywords or do nothing, based on the attribute condition evaluation. |
| FoliageIndex | The index at which you should place the foliage tools in the Terrain Tools overlay. |
| FontRenderingMode | Font rendering mode constants for TrueTypeFontImporter. |
| FontTextureCase | Texture case constants for TrueTypeFontImporter. |
| ForceReserializeAssetsOptions | Options for AssetDatabase.ForceReserializeAssets. |
| GfxThreadingMode | Enum used to specify the threading mode to use. |
| GizmoType | Determines how a gizmo is drawn or picked in the Unity editor. |
| GpuBvhBuildQuality | BVH build quality. |
| GraphicsJobMode | Enum used to specify the graphics jobs mode to use. |
| GraphOptions | Flags that define configuration options that affect the behavior and capabilities of a Graph class. |
| HierarchyDropFlags | Define how dragged objects should be dropped relative to already existing Hierarchy items. |
| HighlightSearchMode | Used to specify how to find a given element in the editor to highlight. |
| IconKind | Icon kind. |
| IconOverlayType | Type of icon overlay. |
| Il2CppCodeGeneration | Options to control code generation for IL2CPP compiler. |
| Il2CppCompilerConfiguration | C++ compiler configuration used when compiling IL2CPP generated code. |
| Il2CppStacktraceInformation | Stack trace information options to choose how much information to include in IL2CPP generated stack traces. |
| ImportAssetOptions | Asset importing options. |
| ImportLogFlags | A value indicating the severity of an import log. |
| IndexingOptions | Use Indexing options to specify the contents of your search index. |
| InsecureHttpOption | Options for allowing plain text HTTP connections for UnityWebRequest. |
| InteractionMode | The mode of interaction, user or automated, that an API method is called with. |
| iOSAppInBackgroundBehavior | Application behavior when entering background. |
| iOSBackgroundMode | Background modes supported by the application corresponding to project settings in Xcode. |
| iOSLaunchScreenImageType | iOS launch screen settings. |
| iOSLaunchScreenType | iOS launch screen settings. |
| iOSSdkVersion | Supported iOS SDK versions. |
| iOSShowActivityIndicatorOnLoading | Activity Indicator on loading. |
| iOSStatusBarStyle | iOS status bar style. |
| iOSTargetDevice | Target iOS device. |
| IssueCategory | Identifiers for all the categories of issues reported by Project Auditor. |
| LaunchResult | Describes the outcome of the application launch process. |
| Layout | Possible layouts for an overlay. |
| LineEndingsMode | Defines the type of line endings used when creating new C# files from within the editor. |
| LogLevel | Describes the message log level of a code issue |
| LogLevel | Options for different levels of log information supported by the Package Manager. |
| MacFullscreenMode | Mac fullscreen mode. |
| MainToolbarDockPosition | Use this enum to specify the default dock position of the element: the left, the middle, or the right. |
| ManagedStrippingLevel | Defines how aggressively Unity strips unused managed (C#) code. |
| MaterialIndex | The index at which you should place the material tools in the Terrain Tools overlay. |
| MeshDeformation | Specifies which method Unity uses to process mesh deformations for skinning. |
| MeshOptimizationFlags | Options to control the optimization of mesh data during asset import. |
| MessageType | User message types. |
| MobileTextureSubtarget | Compressed texture format for target build platform. |
| ModelImporterAnimationCompression | Animation compression options for ModelImporter. |
| ModelImporterAnimationType | Animation mode for ModelImporter. |
| ModelImporterAvatarSetup | Set the Avatar generation mode for ModelImporter. |
| ModelImporterGenerateAnimations | Animation generation options for ModelImporter. These options relate to the legacy Animation system, they should only be used when ModelImporter.animationType==ModelImporterAnimationType.Legacy. |
| ModelImporterHumanoidOversampling | Humanoid Oversampling available multipliers. |
| ModelImporterIndexFormat | Format of the imported mesh index buffer data. |
| ModelImporterMaterialImportMode | Material import options for ModelImporter. |
| ModelImporterMaterialLocation | Material import options for ModelImporter. |
| ModelImporterMaterialName | Material naming options for ModelImporter. |
| ModelImporterMaterialSearch | Material search options for ModelImporter. |
| ModelImporterMeshCompression | Mesh compression options for ModelImporter. |
| ModelImporterNormalCalculationMode | Normal generation options for ModelImporter. |
| ModelImporterNormals | Normal generation options for ModelImporter. |
| ModelImporterNormalSmoothingSource | Source of smoothing information for calculation of normals in ModelImporter. |
| ModelImporterSecondaryUVMarginMethod | Methods for handling margins during lightmap UV generation in ModelImporter. |
| ModelImporterSkinWeights | Skin weights options for ModelImporter. |
| ModelImporterTangents | Vertex tangent generation options for ModelImporter. |
| ModelImporterTangentSpaceMode | Tangent space generation options for ModelImporter. |
| MouseCursor | Custom mouse cursor shapes used with EditorGUIUtility.AddCursorRect. |
| NeighborTerrainsIndex | The index at which you should place the neighbor terrain tools in the Terrain Tools overlay. |
| NewSceneMode | Used when creating a new Scene in the Editor. |
| NewSceneSetup | Used when creating a new Scene in the Editor. |
| NormalMapEncoding | Describes the encoding of normal maps. |
| ObjectChangeKind | This enumeration describes the different kind of changes that can be tracked in an ObjectChangeEventStream. Each event has a corresponding type in ObjectChangeEvents. |
| ObjectMatchMode | Enum for controlling how e.g. GameObjects and Components are matched. |
| ObjectSelectorSearchEndSessionModes | A bit field that contains the different modes to end an Object Selector Search session. |
| OnlineState | Represent the connection state of the version control provider. |
| OnOpenAssetAttributeMode | Indicates whether OnOpenAssetAttribute decorated method is a validation function that checks if asset opening is handled by Unity or a custom script. |
| OpenSceneMode | Used when opening a Scene in the Editor to specify how a Scene should be opened. |
| Orientation | Graph element orientation. |
| OSArchitecture | Enum representing processor architectures that are supported by certain operating systems. |
| OverridableToolbar | Types of built-in toolbars that you can use the Toolbars.IOverridableToolbar interface to override. |
| OverrideTextureCompression | Sets which texture compression override to use when importing assets. |
| PackageSource | This enumeration indicates the source from which a package was installed. |
| PauseState | Enumeration specifying the current pause state of the Editor.Additional resources: PlayModeStateChange, EditorApplication.pauseStateChanged, EditorApplication.isPaused. |
| PivotMode | Where is the tool handle placed. |
| PivotRotation | How is the tool handle oriented. |
| PlayerConnectionInitiateMode | Describes how the player connects to the Editor. |
| PlayModeScenarioState | Represents the different states of a play mode scenario. |
| PlayModeStateChange | Enumeration specifying a change in the Editor's play mode state.Additional resources: PauseState, EditorApplication.playModeStateChanged, EditorApplication.isPlaying. |
| PortConnectorUI | Specifies the visual style of the connector used to represent a port in the UI. |
| PortDirection | Specifies the direction of a port in the graph. |
| PrefabAssetType | Enum indicating the type of Prefab Asset, such as Regular, Model and Variant. |
| PrefabInstanceStatus | Enum with status about whether a Prefab instance is properly connected to its asset. |
| PrefabOverridesOptions | Flags that can be used to control which overrides shoud be kept or cleared when using ReplacePrefabAssetOfPrefabInstance. |
| PrefabUnpackMode | Enum used to determine how a Prefab should be unpacked. |
| PreprocessorOverride | This enum is now obsolete. Unity always uses the Caching Shader Preprocessor. |
| ProbeBakeRequestOutput | A bitmask that describes the outputs to bake for a probe request. |
| ProcessEvent | Enum that represents the events a RoleProvider can receive. |
| ProcessLevel | The type of the current process. It can be a Unity master instance, or a secondary instance connected to the master. |
| ProcessState | Describes the state of a specifc UnityEditor process. |
| ProfileCaptureOptions | Options for filtering captured profile events using the ContentBuildInterface.BeginProfileCapture and ContentBuildInterface.EndProfileCapture APIs. |
| ProfileEventType | Options for labelling captured profile events using the ContentBuildInterface.BeginProfileCapture and ContentBuildInterface.EndProfileCapture APIs. |
| ProfilerModuleChartType | Options for a Profiler module’s chart type. |
| PropertyDatabaseType | An enum representing the type of data stored in a record. |
| ProvisioningProfileType | The type of the iOS provisioning profile if manual signing is used. |
| QueryNodeType | Options for representing the query node types. |
| ReferencesOptions | Options to control the Unity References to other assembly definition files that Unity uses during compilation. |
| RefreshFlags | Refresh flags are used to indicate why search view needs to be refreshed or updated. |
| RemoveAssetOptions | Options for removing assets |
| RenderPickingType | Specifies the type of a render picking callback. |
| RepaintFlags | Flags that indicate what to repaint on the Terrain tools. |
| RequestScriptCompilationOptions | Options for specifying the behavior of CompilationPipeline.RequestScriptCompilation. |
| ResizerDirection | Enum that specifies in which direction to resize the element. |
| ResolveMethod | How assets should be resolved. |
| RevertMode | Defines the behaviour of the version control revert methods. |
| ScriptCallOptimizationLevel | Script call optimization level. |
| ScriptCompilationOptions | Script compilation options. |
| ScriptingImplementation | Scripting implementation (backend). |
| SculptIndex | The index at which you should place the sculpt tools in the Terrain Tools overlay. |
| SearchColumnFlags | Search column flags are used to set multiple states. |
| SearchDocumentFlags | Search document flags are used by the indexing system to provide additional information of an indexed document, like its source. |
| SearchEngineScope | An enumeration that contains the available search engine scopes. |
| SearchExpressionEvaluationHints | Hints provided to the SearchExpression runtime to specify how a certain SearchExpressionEvaluatorAttribute should be executed. |
| SearchExpressionKeyword | Enum contaning all keywords used as configuration parameter in builtin evaluator of SearchExpression. |
| SearchExpressionType | Type used to characterize an expression. An expression might have multiple types. For example a Set is also an iterable. A keyword is also considered a string value. SearchExpressionType can be used with SearchExpressionEvaluatorAttribute to describe the parameter list of an evaluator. |
| SearchFlags | Search options used to fetch items. Mostly with SearchContext to specify how a search should be handled. |
| SearchItemOptions | Indicates how the search item description needs to be formatted when presented to the user. |
| SearchPropositionFlags | The search proposition flags are used to give additional context to the search proposition. |
| SearchQueryErrorType | Enum representing the possible types of query errors. |
| SelectionMode | Determine the selection returned by Selection.GetTransforms. |
| SemanticMergeMode | Behavior of semantic merge. |
| SerializedPropertyNumericType | Returns the precise type for Integer or Floating point properties. |
| SerializedPropertyType | Represents the type of a SerializedProperty. |
| SettingsScope | Sets the scope of a SettingsProvider. The Scope determines where it appears in the UI. For example, whether it appears with the Project settings in the Settings window, or in the Preferences window, or in both windows. |
| Severity | Severity of an issue |
| ShaderCompilerMessageSeverity | Indicates the severity of a message returned by the Unity Shader Compiler. |
| ShaderCompilerPlatform | Shader compiler used to generate player data shader variants. |
| ShaderPrecisionModel | Options for the shader precision model. |
| ShaderQuality | Shader quality preset. |
| ShaderRequirements | Shader features required by a specific shader. Features are bit flags. |
| ShaderType | Identifies the stage in the rendering pipeline. |
| ShortcutModifiers | Represents modifier keys for use in a shortcut binding. |
| ShortcutStage | Represents the stage at which a shortcut action was invoked. |
| ShowDetailsOptions | Defines what details are shown in the preview inspector panel for the search view. |
| SpriteImportMode | Texture importer modes for Sprite import. |
| SpritePackerMode | Sprite Packer mode for the current project. |
| StandaloneBuildSubtarget | Options for the desktop platform subtarget type. |
| StaticEditorFlags | Describes which Unity systems consider the GameObject as static, and include the GameObject in their precomputations in the Unity Editor. |
| StatusCode | This enumeration represents the status of a Package Manager operation. |
| StatusQueryOptions | Options for querying the version control system status of a file. |
| StereoRenderingPath | Enum used to specify what stereo rendering path to use. |
| StickyNoteChange | Enum that specifies the type of change to the [StickyNote]. |
| StickyNoteFontSize | Enum used to describe the font size used by the [StickyNote]. |
| StickyNoteTheme | Enum used to describe the visual theme used by the [StickyNote]. |
| StrippingLevel | Managed code stripping level. |
| SubmitResult | The status of an operation returned by the VCS. |
| SVGType | An enum describing how SVG files are imported. |
| TemplateInstantiationMode | An enumeration of options for handling a Scene dependency Asset when you instantiate a SceneTemplateAsset. |
| TerrainBrushPreviewMode | Enum to specify whether DrawBrushPreview previews the source render texture or the destination render texture of a PaintContext. |
| TerrainCategory | A category with which to define tools that inherit from the ITerrainPaintToolWithOverlays interface. |
| TerrainDetailMeshRenderMode | Options for determining the render mode of the mesh detail. |
| TessellationMode | An enum describing how the SVG file will be tessellated. |
| TextCursorPlacement | Where to place the cursor in the text. (see ISearchView.SetSearchText). |
| TextureCompressionFormat | Options for the compressed texture formats that are available on the target build platform. |
| TextureCompressionQuality | Compression Quality. |
| TextureImporterAlphaSource | Select how the alpha of the imported texture is generated. |
| TextureImporterCompression | Select the kind of compression you want for your texture. |
| TextureImporterCubemapConvolution | Defines Cubemap convolution mode. |
| TextureImporterFormat | Imported texture format for TextureImporter. |
| TextureImporterGenerateCubemap | Cubemap generation mode for TextureImporter. |
| TextureImporterMipFilter | Mip map filter for TextureImporter. |
| TextureImporterNormalFilter | Normal map filtering mode for TextureImporter. |
| TextureImporterNPOTScale | Scaling mode for non power of two textures in TextureImporter. |
| TextureImporterRGBMMode | RGBM encoding mode for HDR textures in TextureImporter. |
| TextureImporterShape | The shape of the imported texture. |
| TextureImporterSingleChannelComponent | Selects which Color/Alpha channel Single Channel Textures uses. |
| TextureImporterSwizzle | Options for where texture color channel data comes from in the TextureImporter. |
| TextureImporterType | Select this to set basic parameters depending on the purpose of your texture. |
| TextureResizeAlgorithm | For Texture to be scaled down choose resize algorithm. ( Applyed only when Texture dimension is bigger than Max Size ). |
| Tool | Which tool is active in the editor. |
| TouchPhase | Indicates where in its lifecycle a given touch is. |
| TransitionInterruptionSource | Which AnimatorState transitions can interrupt the Transition. |
| TreeViewSelectionOptions | Enum used by the TreeView.SetSelection method. |
| tvOSSdkVersion | Supported tvOS SDK versions. |
| UIOrientation | Default mobile device orientation. |
| VariableKind | Specifies the scope of a IVariable. |
| VertexChannelCompressionFlags | Use these enum flags to specify which elements of a vertex to compress. |
| VideoBitrateMode | Bit rate after the clip is transcoded. |
| VideoCodec | Choose the video codec to use to import video clips. |
| VideoDeinterlaceMode | Describes how the fields in the image, if any, should be interpreted. |
| VideoEncodeAspectRatio | Methods to compensate for aspect ratio discrepancies between the source resolution and the wanted encoding size. |
| VideoEncodingProfile | Use the options in this enumeration to change the encoder profile. |
| VideoResizeMode | How the video clip's images will be resized during transcoding. |
| VideoSpatialQuality | Controls the imported clip's internal resize to save space at the cost of blurrier images. |
| ViewTool | Enum for Tools.viewTool. |
| VisibleObjects | A bit field that contains the different categories of object that the object selector window can display. |
| VisionOSSdkVersion | Supported VisionOS SDK versions. |
| WebGLClientBrowserType | An enum containing the supported client web browsers. |
| WebGLCompressionFormat | An enum containing different compression types. |
| WebGLDebugSymbolMode | An enum containing different modes for debug symbols. |
| WebGLExceptionSupport | Options for Exception support in WebGL. |
| WebGLLinkerTarget | The build format options available when building to WebGL. |
| WebGLMemoryGrowthMode | An enum containing different memory growth modes. |
| WebGLPowerPreference | An enum containing different power preference hints for the WebGL context. |
| WebGLTextureSubtarget | Compressed texture format for target build platform. |
| WebGLWasmArithmeticExceptions | An enum containing different trapping modes for WebAssembly code. |
| WindowsBuildAndRunDeployTarget | Specifies which Windows device to deploy and launch the Windows app on when using Build and Run from the Editor. |
| WindowsGamepadBackendHint | Specifies the desired Windows API to be used for input. |
| WSABuildAndRunDeployTarget | Specifies the Windows device to deploy and launch the UWP app on when using Build and Run from the Editor. |
| WSABuildType | Build configurations for Windows Store Visual Studio solutions. |
| WSAUWPBuildType | Determines the output build type when building to Universal Windows Platform. |
| XboxBuildSubtarget | Target Xbox build type. |
| XcodeBuildConfig | Build configurations for the Xcode project Unity generates. |
