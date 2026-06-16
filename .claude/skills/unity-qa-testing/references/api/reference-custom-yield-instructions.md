<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/reference-custom-yield-instructions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Yield instructions for the Editor

One of the key additions a `[UnityTest]` provides over regular NUnit `[Test]` is the ability to yield instructions for the Unity Editor. From Unity tests you can skip frames and instruct the Editor to enter or exit Play mode, recompile **scripts**, or wait for a scheduled domain reload to finish.

The following commonly-used yield instructions are pre-defined:

- EnterPlayMode
- ExitPlayMode
- RecompileScripts
- WaitForDomainReload

You can also define additional custom yield instructions for the Unity Editor for use in your Edit mode tests. For more information on how to do this, including usage examples, refer to the `IEditModeTestYieldInstruction` interface API description.

For more information on using the `yield` statement in C#, refer to [yield statement](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/statements/yield).

For information on the use of `yield`-returned instructions for the Editor in Unity coroutines, refer to Splitting tasks across frames.

## Yield a MonoBehaviour to test

`MonoBehaviourTest` is a coroutine and a helper for writing MonoBehaviour tests.

Yield return a `MonoBehaviourTest` from a Unity test to instantiate the `MonoBehaviour` you want to test and wait for it to finish running. Implement the `IMonoBehaviourTest` interface on the `MonoBehaviour` to define when the test completes. The following example demonstrates this:

```
[UnityTest]
public IEnumerator MonoBehaviourTest_Works()
{
    yield return new MonoBehaviourTest<MyMonoBehaviourTest>();
}

public class MyMonoBehaviourTest : MonoBehaviour, IMonoBehaviourTest
{
    private int frameCount;
    public bool IsTestFinished
    {
        get { return frameCount > 10; }
    }

     void Update()
     {
        frameCount++;
     }
}
```

## Additional resources

- Edit mode and Play mode tests
- Coroutine
- YieldInstruction
