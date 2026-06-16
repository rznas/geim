<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanDescription-human.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mapping between Mecanim bone names and bone names in the rig.

Each item in the array is a HumanBone object that contains a Mecanim avatar bone name, a bone name in the model (to which the Mecanim bone is mapped) and a "muscle" that specifies the bone's limits of motion. The bones can be listed in any order but there are a certain number of bones that Mecanim requires you to define; use HumanTrait.RequiredBone to get a list of all required bones.

Additional resources: HumanBone, HumanTrait.BoneName, HumanTrait.RequiredBone.
