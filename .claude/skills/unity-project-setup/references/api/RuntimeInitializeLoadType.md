<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimeInitializeLoadType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies when to get a callback during the startup of the runtime or when entering play mode in the Editor. Used with RuntimeInitializeOnLoadMethodAttribute.

See the RuntimeInitializeOnLoadMethodAttribute documentation for the execution order between the various options.

### Properties

| Property | Description |
| --- | --- |
| AfterSceneLoad | Callback invoked when the first scene's objects are loaded into memory and after Awake has been called. |
| BeforeSceneLoad | Callback invoked when the first scene's objects are loaded into memory but before Awake has been called. |
| AfterAssembliesLoaded | Callback invoked when all assemblies are loaded and preloaded assets are initialized. At this time the objects of the first scene have not been loaded yet. |
| BeforeSplashScreen | Callback invoked before the splash screen is shown. At this time the objects of the first scene have not been loaded yet. |
| SubsystemRegistration | Callback invoked when starting up the runtime. Called before the first scene is loaded. |
