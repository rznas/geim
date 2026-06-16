<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Awaitable.MainThreadAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**MainThreadAwaitable** Awaitable object that completes when switching to the main thread.

### Description

Resumes execution on the Unity main thread. Completes immediately when called from the main thread.

```csharp
public async Awaitable Start()
{
    await Awaitable.BackgroundThreadAsync();
    // do some heavy math here without blocking the frame
    float result = 42;
    // switch back to the main frame to be able to call SceneManager.LoadSceneAsync
    await Awaitable.MainThreadAsync();
    await SceneManager.LoadSceneAsync("my-scene");
}
```
