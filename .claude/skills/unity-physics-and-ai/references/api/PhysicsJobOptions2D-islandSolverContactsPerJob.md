<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsJobOptions2D-islandSolverContactsPerJob.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the minimum number of contacts to solve in each simulation job when performing island solving.

For an overview of these properties and advice on how to use them, see PhysicsJobOptions2D.

The following job profiler names are affected by this property:

• Physics2D.InitializeContactSolverJob
 • Physics2D.WarmStartContactSolverJob.
 • Physics2D.InitializeVelocityConstraintsJob
 • Physics2D.SolvePositionConstraintsJob
 • Physics2D.SolveVelocityConstraintsJob
 • Physics2D.StoreConstraintImpulsesJob
 • Physics2D.SolveContinuousPositionConstraintsJob.
