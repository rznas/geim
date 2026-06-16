<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetReaderName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |
| readerIndex | Index of the reader. |

### Returns

**string** The debug name of the reader.

### Description

Gets the name of a specified job that reads from an AtomicSafetyHandle.

This is a debugging method used to produce better error messages and is not intended to be called from user code.
