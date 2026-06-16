<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ObjectIdResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The results of an ObjectIdRequest, stored in ObjectIdRequest._result, containing the ObjectIdResult.idToObjectMapping that is needed to interpret the color-encoded object IDs that are rendered in the ObjectIdRequest._destination RenderTexture.

Please see ObjectIdRequest for further information and examples on submitting and using the results of this request.

Additional resources: ObjectIdRequest.

### Properties

| Property | Description |
| --- | --- |
| idToObjectMapping | An array of Objects that can be used to deterimine the object at each pixel in ObjectIdRequest._destination, first by decoding colors from ObjectIdRequest._destination to an index using ObjectIdResult.DecodeIdFromColor, and then by looking up this index in this array. |

### Static Methods

| Method | Description |
| --- | --- |
| DecodeIdFromColor | A utility function that can be used to decode colors from ObjectIdRequest._destination to an index that can then be looked up in ObjectIdResult._idToObjectMapping. |
