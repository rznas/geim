<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationStreamHandleUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Static class providing utility functions for animation stream handles.

Additional resources: AnimationStream and PropertyStreamHandle.

### Static Methods

| Method | Description |
| --- | --- |
| ReadEntityIds | Reads EntityId properties from the PropertyStreamHandle array (handles) and stores the EntityIds in the provided buffer. The buffer must have enough allocated space to store all values. |
| ReadFloats | Reads float properties from the PropertyStreamHandle array (handles) and stores the floats in the provided buffer. The buffer must have enough allocated space to store all values. |
| ReadInts | Reads integer properties from the PropertyStreamHandle array (handles) and stores the integers in the provided buffer. The buffer must have enough allocated space to store all values. |
| WriteEntityIds | Write EntityIds from buffer to property stream handles. |
| WriteFloats | Writes float properties from the buffer to the PropertyStreamHandle array (handles). |
| WriteInts | Write integers from buffer to property stream handles. |
