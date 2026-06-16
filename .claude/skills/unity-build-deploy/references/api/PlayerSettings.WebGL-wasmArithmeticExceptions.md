<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WebGL-wasmArithmeticExceptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The trapping mode for WebAssembly code.

WebAssembly code might throw an exception if you're using arithmetic operations like division by zero or rounding a very large float to an integer. Unity recommends using Throw mode to help detect for potential issues sooner.
