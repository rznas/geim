<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JNINativeMethod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines a single method to register with a Java class using AndroidJNI.RegisterNatives.

This struct stores information about the Java method, such as its name, JNI signature, and the pointer to its corresponding native function. Registering this information using the AndroidJNI.RegisterNatives allows you to integrate Android-specific capabilities in your Unity application.

**Note**: Use of this struct requires knowledge of Android Java Native Interface (JNI) concepts. For more information, refer to Java Native Interface Specification (Oracle)

```csharp
// Delegate definition 
delegate void JavaToCs(IntPtr jniEnv, IntPtr klass, int x);// Method definition
[MonoPInvokeCallback(typeof(JavaToCs))]
static void CsMethod(IntPtr jniEnv, IntPtr klass, int x)
{
    Debug.Log("From Java: " + x);
}// Array to be passed to AndroidJNI.RegisterNative
var methods = new JNINativeMethod[]
{
    new JNINativeMethod
    {
        name = "csMethod",
        signature = "(I)V",
        fnPtr = System.Runtime.InteropServices.Marshal.GetFunctionPointerForDelegate(new JavaToCs(CsMethod)),
    }
};// Register method with the specified Java class
AndroidJNI.RegisterNatives(clazz, methods);
```

### Properties

| Property | Description |
| --- | --- |
| fnPtr | The pointer to the native function that is called from the Java code. |
| name | The name of the Java method implemented by the corresponding native function. |
| signature | The JNI method signature string that represents the parameters and return type of the Java method. |
