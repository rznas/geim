<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.DiscreteEvaluationAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this attribute to indicate that a property will be evaluated as a discrete value during animation playback.

When a property is assigned the DiscreteEvaluation attribute, it is evaluated as a constant value during animation playback. This means that the property's value is neither interpolated between keys nor blended between clips. This affects the evaluation of related AnimationCurves and disables editing the Tangent mode in the Animation window: the TangentMode is set to Constant.

Note: The DiscreteEvaluation attribute only supports positive integer values. If an Animation clip is created with a property that is assigned the DiscreteEvaluation attribute and this attribute is modified or removed, the Animation clip cannot be reused.

### Constructors

| Constructor | Description |
| --- | --- |
| DiscreteEvaluationAttribute | Use this attribute to indicate that a property will be evaluated as a discrete value during animation playback. |
