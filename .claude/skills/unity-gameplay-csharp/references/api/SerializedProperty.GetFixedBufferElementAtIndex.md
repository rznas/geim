<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.GetFixedBufferElementAtIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the element at the specified index in the fixed buffer.

Additional resources: isFixedBuffer, fixedBufferSize.

```csharp
using UnityEngine;
using UnityEditor;[System.Serializable]
public unsafe struct TestStruct
{
    public fixed int intBuffer[7];
}public unsafe class TestScript : MonoBehaviour
{
    public TestStruct testStruct;    void Start()
    {
        fixed(int* buffer = testStruct.intBuffer)
        {
            for (int i = 0; i < 7; ++i)
                buffer[i] = 3 + i;
        }        var so = new SerializedObject(this);
        var prop = so.FindProperty("testStruct.intBuffer");        Debug.Log("isFixedBuffer = " + prop.isFixedBuffer);
        Debug.Log("fixedBufferSize = " + prop.fixedBufferSize);        var elemProp = prop.GetFixedBufferElementAtIndex(2);        Debug.Log("GetFixedBufferElementAtIndex(2) = " + elemProp.intValue);        elemProp.intValue = 42;        so.ApplyModifiedProperties();        fixed(int* buffer = testStruct.intBuffer)
        {
            Debug.Log("intBuffer[2] = " + buffer[2]);
        }
    }
}
```
