<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LocalKeywordSpace.FindKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the shader keyword to search for. |

### Returns

**LocalKeyword** Returns a valid LocalKeyword if it's present in the keyword space. Otherwise, returns an invalid LocalKeyword.

### Description

Searches for a local shader keyword with a given name in the keyword space.

Use this method to efficiently retrieve a local shader keyword with a given name. The resulting keyword's LocalKeyword.isValid property indicates whether the keyword exists in this local keyword space.

Additional resources: LocalKeyword, LocalKeyword.isValid, Shader.keywordSpace, ComputeShader.keywordSpace.
