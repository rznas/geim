<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JNINativeMethod-fnPtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The pointer to the native function that is called from the Java code.

Obtain this pointer by calling `Marshal.GetFunctionPointerForDelegate`, where the delegate refers to a method annotated with `MonoPInvokeCallback` attribute. The method must have the signature: `static ReturnType MyMethod(IntPtr jniEnv, IntPtr objectOrClass, ...);`
