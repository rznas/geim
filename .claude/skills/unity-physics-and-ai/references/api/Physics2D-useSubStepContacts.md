<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-useSubStepContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to calculate contacts for all simulation sub-steps or only the first sub-step.

When simulation sub-stepping is enabled with Physics2D.useSubStepping, this property is used to control the whether or not contacts are calculated for all sub-steps or only the first sub-step.

When enabled, contacts are calculated for all sub-steps. This provides a more accurate simulation for each sub-step but will reduce performance. In most cases, this extra contact calculation isn't required.

When disabled, contacts are only calculated for the first sub-step. Subsequent sub-steps only perform integration and constraint solving. This increases performance whilst still maintaining a stable simulation. In most cases, this should be used.

Additional resources: Physics2D.useSubStepping, Physics2D.minSubStepFPS, Physics2D.maxSubStepCount, PhysicsScene2D.subStepCount and PhysicsScene2D.subStepLostTime.
