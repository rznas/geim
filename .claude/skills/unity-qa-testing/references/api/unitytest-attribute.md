<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/course/unitytest-attribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# 9. Using the UnityTest Attribute

## Learning objectives

This section will introduce you to the custom `[UnityTest]` Attribute, which allows for creating tests that run over multiple frames.

## Intro and motivation

An important extension to the Nunit framework that we’ve made is introducing the `[UnityTest]` attribute. The attribute allows for creating tests that can yield and resume running after a certain condition. Therefore the test must have the return type of `IEnumerator`. You can then yield back a yield instruction or null, like so:

```
[UnityTest]
public IEnumerator MyTest()
{
 DoSomething();
 // Skip 1 frame.
 yield return null;
 DoSomethingElse();
}
```

In the snippet above we call the `DoSomething` method, then skip one frame before calling the `DoSomethingElse` method.

For more information on the yield keyword in C#, see the [Microsoft documentation](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/yield).

## Exercise

In the sample `9_UnityTestAttribute` you will find a Play Mode test assembly set up with one Play Mode test in it. The PlayMode test does not have a body yet, but there is a function called `PrepareCube()` which will set up a cube with some physics applied.

The task is to initialize the cube and then verify that it has moved after one frame has passed.

## Solution

The full solution is available in the `9_UnityTestAttribute_Solution` sample.

```
[UnityTest]
public IEnumerator CubeMovesDown()
{
 var cubeUnderTest = PrepareCube();
 var initialPosition = cubeUnderTest.transform.position;

 yield return null;

 Assert.That(cubeUnderTest.transform.position, Is.Not.EqualTo(initialPosition));
}
```

## Additional resources

UnityTest attribute
