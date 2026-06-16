<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ManagedStrippingLevel.High.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

UnityLinker will strip as much as possible. This will further reduce code size beyond what Medium can achieve. However, this additional reduction may come with tradeoffs. Possible side effects may include, managed code debugging of some methods may no longer work. You may need to maintain a custom link.xml file, and some reflection code paths may not behave the same.
