<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManagerAPI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a mechanism to override specific SceneManager methods.

Derive from this base class to provide alternative implementations to the C# behavior of specific SceneManager methods.

**Warning:** The SceneManagerAPI class is intended for advanced usage. Only a single implementation can be active at a time (via SceneManagerAPI.overrideAPI), so its usage could conflict with any other code attempting to use the same mechanism.

The example detects when scene loading is done by index, and logs a warning to switch to loading by scene path.

```csharp
using UnityEngine;
using Debug = UnityEngine.Debug;
using UnityEngine.SceneManagement;public class SceneIndexLogger : SceneManagerAPI
{
    [RuntimeInitializeOnLoadMethod]
    static void OnRuntimeMethodLoad()
    {
        SceneManagerAPI.overrideAPI = new SceneIndexLogger();
    }    protected override int GetNumScenesInBuildSettings()
    {
        Debug.LogWarning("SceneManager.GetNumScenesInBuildSettings() called, please load scenes by path to avoid issues when scenes are reordered.");
        return base.GetNumScenesInBuildSettings();
    }    protected override Scene GetSceneByBuildIndex(int buildIndex)
    {
        Debug.Log($"SceneManager.GetSceneByBuildIndex(buildIndex = {buildIndex}) called, please load scenes by path to avoid issues when scenes are reordered.");
        return base.GetSceneByBuildIndex(buildIndex);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| overrideAPI | The specific SceneManagerAPI instance to use to handle overridden SceneManager methods. |

### Protected Methods

| Method | Description |
| --- | --- |
| GetNumScenesInBuildSettings | Override for customizing the behavior of the SceneManager.sceneCountInBuildSettings function. |
| GetSceneByBuildIndex | Override for customizing the behavior of the SceneManager.GetSceneByBuildIndex function. |
| LoadFirstScene | Override for customizing the behavior of loading the first Scene in a stub player build. |
| LoadSceneAsyncByNameOrIndex | Override for customizing the behavior of the SceneManager.LoadScene and SceneManager.LoadSceneAsync functions. |
| UnloadSceneAsyncByNameOrIndex | Override for customizing the behavior of the SceneManager.UnloadSceneAsync function. |
