<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Awaitable.BackgroundThreadAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**BackgroundThreadAwaitable** Awaitable object that completes when switching to a background thread.

### Description

Resumes execution on a ThreadPool background thread. Completes immediately when called from a background thread.

```csharp
public async Awaitable Start()
{
    await Awaitable.BackgroundThreadAsync();
    // do some heavy math here without blocking the frame
    float result = 42;
    //switch back to the main frame to be able to call SceneManager.LoadSceneAsync
    await Awaitable.MainThreadAsync();
    await SceneManager.LoadSceneAsync("my-scene");
}
```
