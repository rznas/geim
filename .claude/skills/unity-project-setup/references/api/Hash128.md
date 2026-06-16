<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Hash128.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a 128-bit hash value.

Use `Hash128` to uniquely identify a piece of data. A 128-bit hash value has an extremely low probability of hash collisions, so you can assume that if the hash values of two pieces of data are identical, then the data is identical too. For example, to quickly determine whether texture pixel contents have changed, or if they are identical between several textures, you can use Texture.imageContentsHash.

To compute the hash values for some data, use the Hash128.Compute function. To compute the hash values incrementally for several pieces of data, use Hash128.Append.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var hash = new Hash128();
        hash.Append(42);
        hash.Append(13.0f);
        hash.Append("Hello");
        hash.Append(new int[] {1, 2, 3, 4, 5});
        // prints "2d6e582c3fcfb4b8f3c16650a75dc37b"
        Debug.Log(hash.ToString());
    }
}
```

The hash algorithm used to compute `Hash128` values is [SpookyHash V2](https://en.wikipedia.org/wiki/Jenkins_hash_function#SpookyHash). Note that while this hash algorithm is quite fast to compute and has good hash distribution qualities, it is not a cryptographic hash function.

### Properties

| Property | Description |
| --- | --- |
| isValid | Returns true is the hash value is valid. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| Hash128 | Directly initialize a Hash128 with a 128-bit value. |

### Public Methods

| Method | Description |
| --- | --- |
| Append | Hash new input data and combine with the current hash value. |
| ToString | Convert a Hash128 to string. |

### Static Methods

| Method | Description |
| --- | --- |
| Compute | Compute a hash of input data. |
| Parse | Convert a hex-encoded string into Hash128 value. |
