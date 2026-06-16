<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-desiredTextureMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total amount of texture memory, in bytes, that Unity would use if no constraints are applied.

The `desiredTextureMemory` property provides the total amount of texture memory, in bytes, that Unity would use if no constraints, such as the Texture memory budget, were applied. This value accounts for the memory used by all requested mipmap levels, whether set automatically by Unity or manually by the user. The desired memory matches the used memory until the memory budget is exceeded. Once exceeded, this value can surpass Texture.targetTextureMemory as additional memory is required to fulfill all requests.
