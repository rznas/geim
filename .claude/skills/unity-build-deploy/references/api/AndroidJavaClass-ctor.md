<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaClass-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| className | Specifies the Java class name (e.g. `java.lang.String`). |

### Description

Construct an AndroidJavaClass from the class name.

This essentially means locate the class type and allocate a `java.lang.Class` object of that particular type. It allows you to access static properties and methods of the Java/Kotlin classes without creating an instance or allocating additional memory.

The following code example demonstrates the use of `AndroidJavaClass` constructor for interacting with Java code. It shows how to access a static property from a Java class to retrieve the maximum possible value of an integer.

```csharp
using UnityEngine;public class AccessJavaLangIntegerStatic : MonoBehaviour
{
    void Start()
    {
        var integerClass = new AndroidJavaClass("java.lang.Integer");
        int maxValue = integerClass.GetStatic<int>("MAX_VALUE");
        Debug.Log("java.lang.Integer.MAX_VALUE: " + maxValue);
    }
}
```

The following code examples demonstrate how to use the `AndroidJavaClass` constructor to interact with Kotlin code. The following Kotlin example defines a static method to compute the hash code of a string.

```csharp
object KotlinStringHelper {
   @JvmStatic
   fun getStringHashCode(inputString: String?): Int {
       return inputString?.hashCode() ?: 0
   }
}
```

The following C# example shows how to call the Kotlin method in Unity.

```csharp
using UnityEngine;
public class KotlinExamples
{
    public static int GetKotlinStringHashCode(string text)
    {
        //Use Kotlin object name
        using (AndroidJavaClass kotlinClass = new AndroidJavaClass("KotlinStringHelper")) 
        {
            int hash = kotlinClass.CallStatic<int>("getStringHashCode", text);
            return hash;
        }
    }
}
```
