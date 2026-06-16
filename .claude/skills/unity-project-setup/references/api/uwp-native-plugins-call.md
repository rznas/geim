<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/uwp-native-plugins-call.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Call and implement native UWP plug-ins

To call and implement native Universal Windows Platform (UWP) **plug-ins**, you need to know how to create native plug-ins for Unity. For more information about native plug-ins and their uses, refer to Native plug-ins.

IL2CPP **scripting backend** supports the P/Invoke mechanism for native plug-ins. This means that you can call into native plug-ins directly from your C# code. To do this, you specify the native function prototype and then call it.

The following examples show you how to implement a native plug-in and call it from a C# script.

1. Create a new .cpp file in your Unity project and insert the following native plug-in code: `extern "C" __declspec(dllexport) int __stdcall CountLettersInString(wchar_t* str) { int length = 0; while (*str++ != nullptr) length++; return length; }`
2. Create a new C# script and replace its contents with the following code: `[DllImport("MyPlugin.dll")] private static extern int CountLettersInString([MarshalAs(UnmanagedType.LPWStr)]string str); private void Start() { Debug.Log(CountLettersInString("Hello, native plug-in!")); }`
3. Add the component to a **GameObject** in your **scene** and enter Play mode. The console will print 22. `using UnityEngine; public class ExamplePlugin : MonoBehaviour { [DllImport("MyPlugin.dll")] private static extern int CountLettersInString([MarshalAs(UnmanagedType.LPWStr)]string str); private void Start() { Debug.Log(CountLettersInString("Hello, native plug-in!")); } }`

## Additional resources

- Native plug-ins
- Import and configure plug-ins
- Use P/invoke
