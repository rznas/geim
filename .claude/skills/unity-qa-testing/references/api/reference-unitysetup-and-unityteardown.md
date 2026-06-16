<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/reference-unitysetup-and-unityteardown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Setting up and tearing down tests

The `[UnitySetUp]` and `[UnityTearDown]` attributes are equivalent to the NUnit `[SetUp]` and `[TearDown]` attributes, with the exception that they allow for yielding instructions for the Unity Editor. The `[UnitySetUp]` and `[UnityTearDown]` attributes expect a return type of [IEnumerator](https://docs.microsoft.com/en-us/dotnet/api/system.collections.ienumerator?view=netframework-4.8).

The `[UnityOneTimeSetUp]` and `[UnityOneTimeTearDown]` attributes are equivalent to the NUnit `[OneTimeSetUp]` and `[OneTimeTearDown]` attributes, with the exception that they allow for yielding instructions for the Unity Editor. The `[UnityOneTimeSetUp]` and `[UnityOneTimeTearDown]` attributes expect a return type of [IEnumerator](https://docs.microsoft.com/en-us/dotnet/api/system.collections.ienumerator?view=netframework-4.8).

For more information and usage examples, refer to the respective API references for `[UnitySetUp]`, `[UnityTearDown]`, `[UnityOneTimeSetUp]`, and `[UnityOneTimeTearDown]`.

## Execution order

`[UnitySetUp]` and `[UnityTearDown]` can be used with either the `[Test]` or `[UnityTest]` test attributes. In both cases the relative execution order of Unity and non-Unity `[SetUp]` and `[TearDown]` attributes is the same. The only difference is that a `[UnityTest]` allows for yielding instructions during the test that can result in a domain reload, in which case the non-Unity `[SetUp]` methods are re-run before proceeding to the second part of the test.

## Base and derived classes

The term **base** in the execution order denotes a base class from which a test class inherits. `UnitySetUp` and `UnityTearDown` follow the same pattern as NUnit `SetUp` and `TearDown` attributes in determining execution order between base classes and their derivatives. `SetUp` methods are called on base classes first, and then on derived classes. `TearDown` methods are called on derived classes first, and then on the base class. For more information, refer to the NUnit Documentation.

The following example demonstrates a base and derived class. You can verify the execution order through the order of messages printed in the console:

```
public class BaseClass
    {
        [OneTimeSetUp]
        public void OneTimeSetUp()
        {
            Debug.Log("OneTimeSetUp Base");
        }

        [SetUp]
        public void SetUp()
        {
            Debug.Log("SetUp Base");
        }

        [UnitySetUp]
        public IEnumerator UnitySetUp()
        {
            Debug.Log("UnitySetup Base");
            yield return null;
        }

        [TearDown]
        public void TearDown()
        {
            Debug.Log("TearDown Base");
        }

        [UnityTearDown]
        public IEnumerator UnityTearDown()
        {
            Debug.Log("UnityTearDown Base");
            yield return null;
        }
    }

    public class DerivedClass: BaseClass
    {
        [OneTimeSetUp]
        public new void OneTimeSetUp()
        {
            Debug.Log("OneTimeSetUp");
        }

        [SetUp]
        public new void SetUp()
        {
            Debug.Log("SetUp");
        }

        [UnitySetUp]
        public new IEnumerator UnitySetUp()
        {
            Debug.Log("UnitySetup");
            yield return null;
        }

        [Test]
        public void UnitTest()
        {
            Debug.Log("Test");
        }

        [UnityTest]
        public IEnumerator UnityTest()
        {
            Debug.Log("UnityTest before yield");
            yield return null;
            Debug.Log("UnityTest after yield");
        }

        [TearDown]
        public new void TearDown()
        {
            Debug.Log("TearDown");
        }

        [UnityTearDown]
        public new IEnumerator UnityTearDown()
        {
            Debug.Log("UnityTearDown");
            yield return null;
        }

        [OneTimeTearDown]
        public void OneTimeTearDown()
        {
            Debug.Log("OneTimeTearDown");
        }
    }
```

## Domain reload

Edit mode tests can yield instructions that result in a domain reload. On domain reload, all non-Unity actions (such as `OneTimeSetup` and `Setup`) are rerun before the code that initiated the domain reload continues. Unity actions (such as `UnitySetup`) are not rerun. If the Unity action is the code that initiated the domain reload, then the rest of the code in the `UnitySetup` method runs after the domain reload.

The following example demonstrates base and derived classes with a domain reload:

```
public class BaseClass
    {
        [OneTimeSetUp]
        public void OneTimeSetUp()
        {
            Debug.Log("OneTimeSetUp Base");
        }

        [SetUp]
        public void SetUp()
        {
            Debug.Log("SetUp Base");
        }

        [UnitySetUp]
        public IEnumerator UnitySetUp()
        {
            Debug.Log("UnitySetup Base");
            yield return null;
        }

        [TearDown]
        public void TearDown()
        {
            Debug.Log("TearDown Base");
        }

        [UnityTearDown]
        public IEnumerator UnityTearDown()
        {
            Debug.Log("UnityTearDown Base");
            yield return null;
        }
    }

    public class DerivedClass: BaseClass
    {
        [OneTimeSetUp]
        public new void OneTimeSetUp()
        {
            Debug.Log("OneTimeSetUp");
        }

        [SetUp]
        public new void SetUp()
        {
            Debug.Log("SetUp");
        }

        [UnitySetUp]
        public new IEnumerator UnitySetUp()
        {
            Debug.Log("UnitySetup");
            yield return null;
        }

        [Test]
        public void UnitTest()
        {
            Debug.Log("Test");
        }

        [UnityTest]
        public IEnumerator UnityTest()
        {
            Debug.Log("UnityTest before yield");
            yield return new EnterPlayMode(); 
            //Domain reload happening
            yield return new ExitPlayMode();
            Debug.Log("UnityTest after yield");
        }

        [TearDown]
        public new void TearDown()
        {
            Debug.Log("TearDown");
        }

        [UnityTearDown]
        public new IEnumerator UnityTearDown()
        {
            Debug.Log("UnityTearDown");
            yield return null;
        }

        [OneTimeTearDown]
        public void OneTimeTearDown()
        {
            Debug.Log("OneTimeTearDown");
        }
    }
```

## Additional resources

- Setup and teardown
- Execution order of test actions
