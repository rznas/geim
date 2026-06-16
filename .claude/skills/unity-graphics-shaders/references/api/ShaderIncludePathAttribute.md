<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderIncludePathAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This attribute is no longer supported.

Shader libraries in arbitrary locations are no longer supported. Your shader files must be located under the Assets folder or in a package. To include shader headers from packages, use the following syntax in the shader code:
`#include "Packages/<package name>/<path to your header file>"`
