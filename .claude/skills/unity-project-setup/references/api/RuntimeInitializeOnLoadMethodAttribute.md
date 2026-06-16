<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimeInitializeOnLoadMethodAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this attribute to get a callback when the runtime is starting up and loading the first scene.

Use the various options for RuntimeInitializeLoadType to control when the method is invoked in the startup sequence. 

The following list shows the execution order of the RuntimeInitializeLoadType callbacks:

1. Various low level systems are initialized (window, assemblies, gfx etc.)
2. RuntimeInitializeLoadType.SubsystemRegistration and RuntimeInitializeLoadType.AfterAssembliesLoaded callbacks are invoked.
3. More setup (input systems etc.)
4. RuntimeInitializeLoadType.BeforeSplashScreen callback is invoked.
5. First scene starts loading.
6. RuntimeInitializeLoadType.BeforeSceneLoad callback is invoked. Objects of the scene are loaded but `Awake` hasn't been called yet. All objects are considered inactive.
7. `Awake` and `OnEnable` are invoked on MonoBehaviours.
8. RuntimeInitializeLoadType.AfterSceneLoad callback is invoked. Objects of the scene are considered fully loaded and setup. Active objects can be found with FindObjectsByType.

The above details are when starting up a Player build. When entering Play mode in the Editor the same invocations are ensured.

The default callback invocation time is RuntimeInitializeLoadType.AfterSceneLoad. The execution order within each of the RuntimeInitializeLoadType callbacks is not guaranteed.

**Note:** Use the AlwaysLinkAssemblyAttribute on package or precompiled assemblies that contain one or more methods with the `[RuntimeInitializeOnLoadMethod]` attribute, but which may not contain types used directly or indirectly in any scenes built for the project.

Additional resources: Managed code stripping

```csharp
// Demonstration of the RuntimeInitializeOnLoadMethod attribute
using UnityEngine;class MyClass
{
    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSplashScreen)]
    static void OnBeforeSplashScreen()
    {
        Debug.Log("Before SplashScreen is shown and before the first scene is loaded.");
    }    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
    static void OnBeforeSceneLoad()
    {
        Debug.Log("First scene loading: Before Awake is called.");
    }    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.AfterSceneLoad)]
    static void OnAfterSceneLoad()
    {
        Debug.Log("First scene loaded: After Awake is called.");
    }    [RuntimeInitializeOnLoadMethod]
    static void OnRuntimeInitialized()
    {
        Debug.Log("Runtime initialized: First scene loaded: After Awake is called.");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| loadType | Controling the callback invocation time. |

### Constructors

| Constructor | Description |
| --- | --- |
| RuntimeInitializeOnLoadMethodAttribute | Use the RuntimeInitializeLoadType to control when the callback is invoked. |

### Inherited Members
