<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WebGL-webAssemblyBigInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If enabled, generated WebAssembly code will rely on the BigInt ABI for function signatures containing 64-bit variables. Enable this to achieve faster build times and slightly smaller code size. The Wasm BigInt feature requires at least Chrome 85 (Aug 25, 2020), Firefox 78 (Jun 30, 2020), Safari 14.5 (Apr 26, 2021), or newer. Disable this option to target older browsers that do not support the Wasm BigInt feature. It is recommended to enable this option for new projects and if you prefer fast build iteration times, and to disable it if targeting backward compatibility with older browsers is important.
