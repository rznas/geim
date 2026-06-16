<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes-needsRetetrahedralization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event which is called when the number of currently loaded light probes changes due to additive scene loading or unloading.

For GameObjects rendered using light probe data, Unity uses a tetrahedral space mapping to calculate which light probes to use when rendering each GameObject based on the object's position.

When new light probe data is added or existing light probe data is removed, the tetrahedral space mapping between the light probe positions needs to be re-calculated to account for the new light probes which have been additively loaded in, or for the removed probes which belonged to a scene that was unloaded.

This `needsRetetrahedralization` event is triggered when you either additively load or unload Scenes which contain light probe data, allowing you to decide when you should make the call to LightProbes.Tetrahedralize or LightProbes.TetrahedralizeAsync to retetrahedralize the light probe data.

Because light probe data is considered to be external data that is referenced in the scene, but is not part of the scene itself, it is asynchronously loaded and can sometimes load in after the scene load/unload operation appears to have completed.

Therefore if you are loading or unloading scenes which contain light probe data, you should use this event to determine when to retetrahedralize, rather than relying on the SceneManager.sceneLoaded event, because when the sceneLoaded event is called, the new light probe data may not yet be up-to-date.

In addition, if you are loading multiple scenes which each contain additional light probe data, you should wait for the corresponding number of `needsRetetrahedralization` events before retetrahedralizing the light probe data, because recalculating it after each event would be time-consuming and unnecessary. For example, if you were to additively load five scenes which each contain light probe data, you should wait for all five needsRetetrahedralization events before calling LightProbes.Tetrahedralize or LightProbes.TetrahedralizeAsync.
