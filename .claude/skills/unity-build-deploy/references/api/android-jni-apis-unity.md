<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-jni-apis-unity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Java Native Interface APIs in Unity

Unity provides low-level and high-level [Java Native Interface](https://developer.android.com/training/articles/perf-jni) (JNI) APIs that allow you to interact with Java code from C# **scripts**.

## Low-level API

The low-level AndroidJNI class wraps JNI calls and provides static methods that directly map to JNI methods. The AndroidJNIHelper API provides helper functionality that’s primarily used by the high-level API, but they can be useful in certain situations.

## High-level API

The high-level AndroidJavaObject, AndroidJavaClass, and AndroidJavaProxy classes automate a lot of tasks required for JNI calls. They also use caching to make calls to Java faster. The combination of `AndroidJavaObject` and `AndroidJavaClass` is built on top of `AndroidJNI` and `AndroidJNIHelper`, but they also contain additional functionality such as static methods that you can use to access static members of Java classes.

Additionally, Unity provides the AndroidApplication class to simplify access to instances of `currentActivity`, `currentContext`, and `currentConfiguration` for your application. This class also allows you to delegate code execution on the UI or main thread based on your application’s requirement.

Instances of `AndroidJavaObject` and `AndroidJavaClass` have a one-to-one mapping to an instance of java.lang.Object and java.lang.Class respectively. They provide three types of interactions with Java/Kotlin code:

- Call a method.
- Get the value of a field.
- Set the value of a field.

Each interaction also has a static version:

- CallStatic to call a static method.
- GetStatic to get the value of a static field.
- SetStatic to set the value of a static field.

When you get the value of a field or call a method that returns a value, you use [generics](https://docs.microsoft.com/en-us/dotnet/csharp/fundamentals/types/generics) to specify the return type. When you set the value of a field, you also use generics to specify the type of the field that you’re setting. For methods that don’t return a value, there’s a regular, non-generic version of Call.

**Important**: You must access any non-primitive type as an `AndroidJavaObject`. The only exception is a string which you access directly, even though they don’t represent a primitive type in Java.

## Additional resources

- Code examples: Call Java/Kotlin code from C# scripts
- Best practices for calling Java/Kotlin code
