<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineGlobalSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A ScriptableObject to associate with a RenderPipeline and store project-wide settings for that Pipeline.

A single RenderPipelineGlobalSettings instance can be registered to the GraphicsSettings via GraphicsSettings.RegisterRenderPipelineSettings. We recommend to use this ScriptableObject to save RenderPipeline settings you would find in the GraphicsSettings.

```csharp
using System;
using System.Collections.Generic;using UnityEngine;
using UnityEngine.Rendering;#if UNITY_EDITOR
using UnityEditor.Rendering;
#endifpublic class ExampleRenderPipelineAsset : RenderPipelineAsset
{
    protected override RenderPipeline CreatePipeline()
    {
        return new ExampleRenderPipeline();
    }
}public class ExampleRenderPipeline : RenderPipeline
{
    public virtual RenderPipelineGlobalSettings globalSettings => ExampleRPGlobalSettings.instance;    protected override void Render(ScriptableRenderContext renderContext, Camera[] cameras)
    {
#if UNITY_EDITOR
	// On Editor we must make sure the Global Settings Asset is registered into the GraphicsSettings
	// Graphics Settings will make sure the asset is available on player builds
        	if (globalSettings == null)
	{
 	       var mySettings = ExampleRPGlobalSettings.Create();
 	       ExampleRPGlobalSettings.RegisterToGraphicsSettings(mySettings);
	}
#endif        // Do something
    }
}[SupportedOnRenderPipeline(typeof(ExampleRenderPipelineAsset))]
public class ExampleRPGlobalSettings : RenderPipelineGlobalSettings
{
    private static ExampleRPGlobalSettings cachedInstance = null;
    public static ExampleRPGlobalSettings instance
    {
        get
        {
            if (cachedInstance == null)
                cachedInstance = GraphicsSettings.GetSettingsForRenderPipeline<ExampleRenderPipeline>() as ExampleRPGlobalSettings;
            return cachedInstance;
        }
    }    /*   Use this pattern if you want to enable your global settings to use IRenderPipelineGraphicsSettings	[SerializeReference] private List<IRenderPipelineGraphicsSettings> m_SettingsList = new();
 	protected override List<IRenderPipelineGraphicsSettings> settingsList => m_Settings;    */#if UNITY_EDITOR
    public static void RegisterToGraphicsSettings(ExampleRPGlobalSettings newSettings)
    {
        EditorGraphicsSettings.SetRenderPipelineGlobalSettingsAsset<ExampleRenderPipeline>(newSettings as RenderPipelineGlobalSettings);
        cachedInstance = null;
    }    public static void UnregisterToGraphicsSettings()
    {
        EditorGraphicsSettings.SetRenderPipelineGlobalSettingsAsset<ExampleRenderPipeline>(null);
        cachedInstance = null;
    }    static public ExampleRPGlobalSettings Create()
    {
        ExampleRPGlobalSettings assetCreated = ScriptableObject.CreateInstance<ExampleRPGlobalSettings>();
        return assetCreated;
    }
#endif
}
```

### Properties

| Property | Description |
| --- | --- |
| settingsList | Exposes a List<IRenderPipelineGraphicsSettings> that this RenderPipelineGlobalSettings instance is managing. |

### Public Methods

| Method | Description |
| --- | --- |
| Initialize | Editor-only function that initializes the RenderPipelineGlobalSettings. |

### Protected Methods

| Method | Description |
| --- | --- |
| Add | Adds a IRenderPipelineGraphicsSettings interface to this instance of the RenderPipelineGlobalSettings asset. |
| Contains | If the given ISRPGraphicsSetting type is present in this RenderPipelineGlobalSettings instance. |
| GetSettingsImplementingInterface | Get all settings for the currently active pipeline that implement TSettingsInterfaceType. |
| Remove | Removes a IRenderPipelineGraphicsSettings interface from this instance of the RenderPipelineGlobalSettings asset. |
| TryGet | Looks for a IRenderPipelineGraphicsSettings interface in this instance of the RenderPipelineGlobalSettings asset and returns true if it's found. |
| TryGetFirstSettingsImplementingInterface | Try to get the first settings that implements TSettingsInterfaceType. |

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
