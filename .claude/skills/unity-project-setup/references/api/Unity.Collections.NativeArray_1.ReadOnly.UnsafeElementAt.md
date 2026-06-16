<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArray_1.ReadOnly.UnsafeElementAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the element. |

### Returns

**T** A `ref readonly` to a value of type `T`.

### Description

Provides read-only access to ReadOnly elements by index.

This method is dangerous because it returns reference to the memory that can be destroyed (with Dispose, for instance) and if the `ref local` is accessed that might lead to undefined results including crashes.

```csharp
public readonly struct BigStruct
{
    public readonly long a;
    public readonly long b;
    public readonly long c;
    public readonly long d;
}static void ProcessByte(byte b)
{
    ...
}static void ProcessBigStructWithoutCopy(in BigStruct bigStruct) // see 'in' modificator
{
    ...
}static void Example()
{
    const int n = 32;    var nativeArrayOfBytes = new NativeArray<byte>(n, Allocator.Temp);
    var nativeArrayOfBigStructures = new NativeArray<FixedString4096Bytes>(n, Allocator.Temp);    // ... fill the arrays with some data ...    var readOnlyBytes = nativeArrayOfBytes.AsReadOnly();
    for (var i = 0; i < n; ++i)
    {
        ProcessByte(readOnlyBytes[i]);
        //ProcessByte(readOnlyBytes.UnsafeElementAt(i)); is more expensive, since pointer on x64 platforms is 8 times bigger than a byte
    }    var readOnlyBigStructures = nativeArrayOfBigStructures.AsReadOnly();
    for (var i = 0; i < n; ++i)
    {
        //ProcessBigStructWithoutCopy(readOnlyBigStructures[i]); copy - expensive in this case
        ProcessBigStructWithoutCopy(readOnlyBigStructures.UnsafeElementAt(i));
    }    // dangerous part
    ref var element = ref readOnlyBigStructures.UnsafeElementAt(4);    // element is valid here
    ProcessBigStructWithoutCopy(element);    nativeArrayOfBigStructures.Dispose();    // access to element here is undefined, can lead to a crash or wrong results
    // ProcessBigStructWithoutCopy(element); <-- do not do this!
}
```
