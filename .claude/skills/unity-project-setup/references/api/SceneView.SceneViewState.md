<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView.SceneViewState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection of graphic settings for this SceneView. All graphic settings are boolean.

After changing settings, call SceneView.RepaintAll to redraw the scene with the new values.

### Properties

| Property | Description |
| --- | --- |
| allEnabled | Whether all graphic settings are enabled for this SceneViewState. |
| alwaysRefresh | Whether to redraw SceneView at a fixed interval. |
| alwaysRefreshEnabled | Whether to redraw SceneView at a fixed interval. |
| cloudsEnabled | Whether the clouds are rendered in this SceneView. |
| flaresEnabled | Whether lens flares render in this SceneView. |
| fogEnabled | Whether fog renders in this SceneView. |
| fxEnabled | Whether to render (when enabled) effects in this SceneView. |
| imageEffectsEnabled | Whether image effects (post processing) render in this SceneView. |
| particleSystemsEnabled | Whether particle systems render in this SceneView. |
| showClouds | Whether the clouds are rendered in this SceneView. |
| showFlares | Whether lens flare rendering is enabled in this SceneView. |
| showFog | Whether fog rendering is enabled in this SceneView. |
| showImageEffects | Whether image effects (post processing) rendering is enabled in this SceneView. |
| showParticleSystems | Whether particle systems rendering is enabled in this SceneView. |
| showSkybox | Whether the skybox rendering is enabled in this SceneView. |
| showVisualEffectGraphs | Whether visual effect graphs rendering is enabled in this SceneView. |
| skyboxEnabled | Whether the skybox renders in this SceneView. |
| visualEffectGraphsEnabled | Whether visual effect graphs render in this SceneView. |

### Constructors

| Constructor | Description |
| --- | --- |
| SceneView.SceneViewState | Creates a new SceneViewState with either default values or values from another SceneViewState. |

### Public Methods

| Method | Description |
| --- | --- |
| SetAllEnabled | Sets all graphic settings, for this SceneViewState, to either true or false. |
