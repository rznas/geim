<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-interacting-code-example.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Code examples: Call JavaScript and C/C++/C# functions in Unity

You can use code to perform interactions between **plug-ins** and your Unity code. The following examples show how to call various types of functions from JavaScript and C/C++/C# code in your Unity project.

## Call JavaScript code in Unity C# example

The following code is an example of JavaScript code that your Unity C# script can call functions from.

```
mergeInto(LibraryManager.library, {

  Hello: function () {
    window.alert("Hello, world!");
  },

  HelloString: function (str) {
    window.alert(UTF8ToString(str));
  },

  PrintFloatArray: function (array, size) {
    for(var i = 0; i < size; i++)
        console.log(HEAPF32[(array >> 2) + i]);
  },

  AddNumbers: function (x, y) {
    return x + y;
  },

  StringReturnValueFunction: function () {
    var returnStr = "bla";
    var bufferSize = lengthBytesUTF8(returnStr) + 1;
    var buffer = _malloc(bufferSize);
    stringToUTF8(returnStr, buffer, bufferSize);
    return buffer;
  },

  BindWebGLTexture: function (texture) {
    GLctx.bindTexture(GLctx.TEXTURE_2D, GL.textures[texture]);
  },

});
```

The following code is an example of Unity C# code that calls the functions defined in the JavaScript example.

```csharp
using UnityEngine;
using System.Runtime.InteropServices;

public class NewBehaviourScript : MonoBehaviour {

    [DllImport("__Internal")]
    private static extern void Hello();

    [DllImport("__Internal")]
    private static extern void HelloString(string str);

    [DllImport("__Internal")]
    private static extern void PrintFloatArray(float[] array, int size);

    [DllImport("__Internal")]
    private static extern int AddNumbers(int x, int y);

    [DllImport("__Internal")]
    private static extern string StringReturnValueFunction();

    [DllImport("__Internal")]
    private static extern void BindWebGLTexture(int texture);

    void Start() {
        Hello();
        
        HelloString("This is a string.");
        
        float[] myArray = new float[10];
        PrintFloatArray(myArray, myArray.Length);
        
        int result = AddNumbers(5, 7);
        Debug.Log(result);
        
        Debug.Log(StringReturnValueFunction());
        
        var texture = new Texture2D(1, 1, TextureFormat.ARGB32, false);
        BindWebGLTexture(texture.GetNativeTexturePtr());
    }
}
```

## Call C/C++/C# code in Unity C# scripts example

The following code is an example C++ plug-in with simple functions that you can call in your Unity project.

```
#include <stdio.h>

extern "C" void Hello ()
{
    printf("Hello, world!\n");
}

extern "C" int AddNumbers (int x, int y)
{
    return x + y;
}
```

Then, use the following Unity C# code in your Unity project to call the C++ functions.

```csharp
using UnityEngine;
using System.Runtime.InteropServices;

public class NewBehaviourScript : MonoBehaviour {

    [DllImport("__Internal")]
    private static extern void Hello();

    [DllImport("__Internal")]
    private static extern int AddNumbers(int x, int y);

    void Start() {
        Hello();
        
        int result = AddNumbers(5, 7);
        Debug.Log(result);  
    }
}
```

## Additional resources

- Interaction with browser scripting
- Set up your JavaScript plug-in
- Call JavaScript functions from Unity C# scripts
- Call Unity C# script functions from JavaScript
- Call C/C++/C# functions from Unity C# scripts
