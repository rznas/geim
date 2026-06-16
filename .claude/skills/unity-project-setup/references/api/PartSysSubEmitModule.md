<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/PartSysSubEmitModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Sub Emitters module reference

View and edit the settings for the Sub Emitters module.

Sub emitters are **particle** emitters that Unity uses to spawn additional particles at the location of an existing particle.

## Properties

For some properties in this section, you can use different modes to set their value. For information on the modes you can use, refer to Vary Particle System properties over time.

The Sub Emitters module contains the following settings.

| **Property** | **Function** |
| --- | --- |
| **Spawn condition** | Determines when a parent particle emits additional particles. For more information, refer to Spawn condition dropdown. To assign a sub emitter for the spawn condition, use the picker (**⊙**) to select an existing **Particle System** or use the **Add** (**+**) button to create a new one. |
| **Inherit** | Selects which properties to inherit from the parent system. |
| **Emit Probability** | Sets the probability that a parent particle emits new particles. A value of 0 means particles never spawn new particles. A value of 1 means particles always spawn new particles. |

### Spawn condition dropdown

The Spawn condition dropdown contains the following settings.

| **Spawn condition** | **Function** |
| --- | --- |
| **Birth** | Emits particles from the start to the end of a parent particle’s lifetime. |
| ****Collision**** | Emits particles when a parent particle collides with another **GameObject**. For more information on how to control particle collisions, refer to the Collision module reference. |
| **Death** | Emits particles when Unity destroys a parent particle at the end of its lifetime. |
| **Trigger** | Emits particles when a parent particle interacts with a trigger volume. For more information, refer to Triggers module reference. |
| **Manual** | Emits particles only when explicitly triggered by `ParticleSystem.TriggerSubEmitter`. You can trigger this for all particles or just a subset. |

**Note:** In the sub emitter Emission module, the **Birth** condition supports all the settings and multiple bursts in the **Bursts** list. The **Collision**, **Death**, **Trigger**, and **Manual** conditions support only a single burst in the **Bursts** list.

## Additional resources

- Particle emissions and emitters
