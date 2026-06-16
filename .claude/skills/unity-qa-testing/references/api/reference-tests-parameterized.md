<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/reference-tests-parameterized.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Parameterized tests

Unity Test Framework supports parameterized tests, which can be useful for data-driven testing.

Regular NUnit tests support both the `[TestCase]` and `[ValueSource]` attributes for parameterized tests. Unity tests only support `ValueSource`

The following example demonstrates use of `ValueSource` with a Unity test:

```
static int[] values = new int[] { 1, 5, 6 };

[UnityTest]
public IEnumerator MyTestWithMultipleValues([ValueSource("values")] int value)
{
    yield return null;
}
```

## Ignore based on parameters

You can selectively ignore tests based on the parameters supplied to the test method by using the ParameterizedIgnoreAttribute.

## Additional resources

- UnityTestAttribute
