<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGLExceptionSupport.ExplicitlyThrownExceptionsOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable throw support.

With this option, exceptions can be thrown and caught in WebGL. But only exceptions explictly thrown will work. NullReferenceExceptions can still cause your content to fail. This has a significant cost in performance and build size over WebGLExceptionSupport.None, so only use it when you need it.
