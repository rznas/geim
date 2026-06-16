<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.Load.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Loads the asset of the requested type stored at `path` in a Resources folder.

This method returns the asset at `path` if it can be found, otherwise it returns null.
 Note that the `path` is case insensitive and must not contain a file extension. All asset names and paths in Unity use forward slashes, so using backslashes in the `path` will **not** work.

 The `path` is relative to any folder named `Resources` inside the Assets folder of your project. More than one Resources folder can be used. If you have multiple Resources folders you cannot duplicate the use of an asset name.

For example, a project may have Resources folders called `Assets / Resources/` and `Assets / Guns / Resources/`. The path does not need to include `Assets` and `Resources` in the string, for example loading a GameObject at `Assets / Guns / Resources / Shotgun.prefab` would only require `Shotgun` as the `path`. Also, if `Assets / Resources / Guns / Missiles / PlasmaGun.prefab` exists it can be loaded using `Guns / Missiles / PlasmaGun` as the `path` string.
 If you have multiple Resources folders you cannot duplicate the use of an asset name.

If you have multiple assets of different types with the same name, and you don't specify the type, then the object that Unity returns is non-deterministic because the potential candidates are not ordered in any particular way. Instead, use `Resources.Load<T>(path)` to specify the required asset.

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to the target resource to load. |

### Returns

**T** An object of the requested generic parameter type.

### Description

Loads the asset of the requested type stored at `path` in a Resources folder using a generic parameter type filter of type `T`.

This method returns the asset at `path` if it can be found and if its type matches the requested generic parameter type, otherwise it returns null. You can use this overload to reduce type conversion in your code by providing a generic type parameter. This allows Unity to perform the C# type conversion for you.

```csharp
// Loading assets from the Resources folder using the generic Resources.Load<T>(path) method
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        //Load a text file (Assets/Resources/Text/textFile01.txt)
        var textFile = Resources.Load<TextAsset>("Text/textFile01");        //Load text from a JSON file (Assets/Resources/Text/jsonFile01.json)
        var jsonTextFile = Resources.Load<TextAsset>("Text/jsonFile01");
        //Then use JsonUtility.FromJson<T>() to deserialize jsonTextFile into an object        //Load a Texture (Assets/Resources/Textures/texture01.png)
        var texture = Resources.Load<Texture2D>("Textures/texture01");        //Load a Sprite (Assets/Resources/Sprites/sprite01.png)
        var sprite = Resources.Load<Sprite>("Sprites/sprite01");        //Load an AudioClip (Assets/Resources/Audio/audioClip01.mp3)
        var audioClip = Resources.Load<AudioClip>("Audio/audioClip01");
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to the target resource to load. |
| systemTypeInstance | Type filter for objects returned. |

### Returns

**Object** The requested asset returned as an Object.

### Description

Loads an asset stored at `path` in a Resources folder using an optional `systemTypeInstance` filter.

This method returns the asset at `path` if it can be found and if its type matches the optional `systemTypeInstance` parameter, otherwise it returns null.
 You may need to cast the returned object to the actual associated C# type of the asset in order to access its methods and properties, or use it with other Unity APIs.

```csharp
// Loading assets from the Resources folder using the Resources.Load(path)
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Assigns a texture named "Assets/Resources/glass" to a Plane.
    void Start()
    {
        GameObject go = GameObject.CreatePrimitive(PrimitiveType.Plane);
        var rend = go.GetComponent<Renderer>();
        rend.material.mainTexture = Resources.Load("glass") as Texture;
    }
}
```

```csharp
// Loading assets from the Resources folder using the Resources.Load(path, systemTypeInstance)
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Instantiates a Prefab named "enemy" located in any Resources folder in your project's Assets folder.
    void Start()
    {
        GameObject instance = Instantiate(Resources.Load("enemy", typeof(GameObject))) as GameObject;
    }
}
```
