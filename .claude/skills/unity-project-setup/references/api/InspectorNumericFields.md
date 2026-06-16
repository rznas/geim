<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/InspectorNumericFields.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use numeric field expressions

Numeric field inputs accept:

- Positive and negative numbers. Some properties might limit the range. For example, RGB values can’t be negative.
- Mathematical expressions.
- Special functions for multiple selections.

## Use mathematical expressions

You can use a mathematical expression to calculate the value of a numeric field.

For example, if you enter `2+3`, the field calculates the value `5` and uses it. When you change focus away from the field, the field refreshes and shows the calculated value.

For more information about supported expressions, refer to `ExpressionEvaluator`.

## Use special functions

You can use special functions to edit multiple selected objects at once. For example, a linear ramp can distribute the selected objects along an axis.

**Note**: Constrain Proportions Scale doesn’t support math mathematical for multi-selection.

### Linear

For a linear ramp between `a` and `b`, use `L(a,b)`.

### Random

For random values between `a` and `b`, use `R(a,b)`.

### Assign

To modify the current values, use the `+=`, `-=`, `*=`, and `/=` expressions. For example, to double the field’s value for all selected objects, enter `*=2`.

## Combine expressions

You can use mathematical expressions in function. For example, the expression `L(0,2*pi)` produces a linear distribution of values between `0` and `2pi`.

The following examples uses the linear ramp function as the argument in sine and cosine functions in the X and Z fields. This distributes the objects in a circle:

## Use expressions in custom editors

When you create custom editors, support for numeric expressions are automatically available in all `EditorGUI.PropertyField` and `EditorGUILayout.PropertyField` properties that have a numerical value.

## Additional resources

- Inspect scripts
- Custom editors
- `ExpressionEvaluator` reference
- `EditorGUI.PropertyField` reference
- `EditorGUILayout.PropertyField` reference
