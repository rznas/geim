<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/particle-triggers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Particle triggers

The Built-in **Particle** System’s Triggers module allows you to access and modify particles based on their interaction with one or more **Colliders** in the **Scene**.

When you enable this module, the **Particle System** calls the OnParticleTrigger() callback on attached **scripts**, which you can use to access lists of particles depending on where they are in respect to the Colliders in the Scene.
