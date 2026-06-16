<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlCreateInstanceMethodAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Declares a method to create instances in place of the default constructor.

Use this to provide custom instance creation logic, such as object pooling or dependency injection. The method must meet the following requirements: - Be a static method defined on the element type. - Have public or internal accessibility. - Accept no parameters. - Not be generic. - Return an instance of the element type (or null to fall back to the default constructor).

 If this attribute is not found on the element, the source generator uses the default constructor (`new T()`). If the method returns null, the source generator uses the default constructor as a fallback. 

The following example uses a custom creation method for object pooling:

```csharp
using UnityEngine.UIElements;
using UnityEngine.Pool;namespace MyNamespace
{
    [UxmlElement]
    public partial class MyButtonElement : Button
    {
        [UxmlCreateInstanceMethodAttribute]
        public static MyButtonElement CreateInstance()
        {
            return GenericPool<MyButtonElement>.Get();
        }
    }
}
```
