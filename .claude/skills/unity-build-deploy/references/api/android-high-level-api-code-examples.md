<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-high-level-api-code-examples.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Code examples: Call Java/Kotlin code from C# scripts

Unity provides high-level APIs such as `AndroidJavaObject`, `AndroidJavaClass`, `AndroidJavaProxy`, and `AndroidApplication` that allow you to interact with Java/Kotlin code from C# **scripts**.

The following code examples demonstrate how to use these APIs.

## Example 1: Get the hash code for a Java string

The following code example creates an instance of java.lang.String initialized with a string, and retrieves the hash value for that string.

```csharp
using UnityEngine;
public class JavaExamples
{
    public static int GetJavaStringHashCode(string text)
    {
        using (AndroidJavaObject jo = new AndroidJavaObject("java.lang.String", text))
        {
            int hash = jo.Call<int>("hashCode");
            return hash;
        }
    }
}
```

This example:

1. Creates an `AndroidJavaObject` that represents a java.lang.String.
2. The `AndroidJavaObject` constructor takes at least one parameter, which is the name of the class to construct an instance of. Any parameters after the class name are for the constructor call on the object, in this case the `text` parameter from `GetJavaStringHashCode`.
3. Calls hashCode() to get the hash code of the string. This call uses the `int` generic type parameter for `Call` because `hashCode()` returns the hash code as an integer.

**Note**: You can’t use dotted notation to instantiate a nested Java class. You must use the `$` separator to instantiate inner classes. For example, Use `android.view.ViewGroup$LayoutParams` or `android/view/ViewGroup$LayoutParams`, where the `LayoutParams` class is nested in the `ViewGroup` class.

## Example 2: Retrieve the application’s cache directory

The following code example retrieves the cache directory for the current application in C# using the `AndroidApplication` class.

```csharp
using UnityEngine;
using UnityEngine.Android;

public class JavaExamples
{
    public static string GetApplicationCacheDirectory()
    {
        using var javaFile = AndroidApplication.currentActivity.Call<AndroidJavaObject>("getCacheDir");
        var cacheDirectory = javaFile.Call<string>("getCanonicalPath");
        return cacheDirectory;
    }
}
```

This example:

1. Uses `AndroidApplication.currentActivity` to access the current Android activity, without explicitly creating `AndroidJavaClass` or `AndroidJavaObject` instances.
2. Calls getCacheDir() on the Activity object, which returns a File object that represents the cache directory.
3. Calls getCanonicalPath() on the File object can to get the cache directory as a string.

**Note**: This example is for reference purposes. Instead, to access the application’s cache and file directory use the Application.temporaryCachePath and Application.persistentDataPath APIs.

## Example 3: Pass data from Java to Unity

The following code example shows how to pass data from Java to Unity using `UnitySendMessage`.

```csharp
using UnityEngine;
using UnityEngine.Android;

public class JavaExamples : MonoBehaviour
{
    private void Start()
    {
        AndroidJNIHelper.debug = true;
        AndroidApplication.unityPlayer.CallStatic("UnitySendMessage", "My GameObject", "JavaMessage", "NewMessage");
    }

    private void JavaMessage(string message)
    {
        Debug.Log("message from java: " + message);
    }
}
```

This example:

1. Uses `AndroidApplication.unityPlayer` to access the Java instance used by an activity without explicitly creating an `AndroidJavaClass` instance.
2. Calls the static`UnitySendMessage` method that’s a member of `com.unity3d.player.UnityPlayer`.

Although you call `UnitySendMessage` from within Unity, it uses Java to relay the message, which then calls back to the native/Unity code to deliver it to the **GameObject** named `My GameObject` which has an attached script that contains a method called `JavaMessage`.

## Additional resources

- Supported data types for Java/Kotlin and C# code
- Best practices for calling Java/Kotlin code
- Example: Create and use Kotlin source plug-in
