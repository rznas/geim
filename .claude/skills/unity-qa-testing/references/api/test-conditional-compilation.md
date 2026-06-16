<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-conditional-compilation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Test conditional compilation

The following example shows how to test your conditionally compiled code. It also prints a message based on the platform selected for the target build.

## Sample code

```csharp
using UnityEngine;
  using System.Collections;
  public class PlatformDefines : MonoBehaviour {
  void Start () {

    #if UNITY_EDITOR
      Debug.Log("Unity Editor");
    #endif

    #if UNITY_IOS
      Debug.Log("Unity iOS");
    #endif

    #if UNITY_STANDALONE_OSX
        Debug.Log("Standalone OSX");
    #endif

    #if UNITY_STANDALONE_WIN
      Debug.Log("Standalone Windows");
    #endif

  }          
  }
```

## Test instructions

1. Open the **Build Profiles** window (menu: **File** > **Build Profiles**).
2. Check that the platform you want to test your code on is the Active platform profile. If it isn’t, select your preferred platform and click **Switch Profile**.
3. Create a script and copy and paste the sample code.
4. In the Game view **toolbar**, click the Play button to enter Play mode. Confirm that the code works by checking for messages relevant to the platform selected in the Unity console. For example, if you choose iOS, the messages `Unity Editor` and `Unity iOS` appear in the console.

## Additional resources

- Unity scripting symbol reference
- Custom scripting symbols
