<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint-enablePreprocessing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Toggle preprocessing for this joint.

This flag has a connection with rigidbodies that have some of their rotational degrees of freedom frozen. The common example is a 2D game that uses 3D rigidbodies with some of their translational and rotational degrees of freedom frozen.

Rigidbody rotations freezing is internally implemented by setting an infinite inertia around those frozen axes so that the body does not rotate because it's very resistant to.

This approach has some nice properties: most significantly it lets such bodies to correctly go to sleep as opposed to the approach where we would cancel out the rotations around the frozen axes as a post-solver step.

However the downside is that very stiff solver constraints can be generated when such bodies are connected with joints. When the flag is set, PhysX would ignore constraints that produce huge impulses generating only a small change in velocity.

Whilst it may reduce the overall accuracy of the joint simulation, it's been proven to help with overconstrained configurations like in the 2D case.
