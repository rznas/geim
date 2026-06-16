<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TextValueField_1-formatString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The format string used to define how numeric values are displayed. The string follows standard .NET formatting conventions.

The supported numeric formats string (using `0` as an example) are: 
 - `"0.#"`: Displays the numeric value with up to one decimal place, omitting trailing zeros. For example, `3.5` becomes `3.5` and `3.0` becomes `3`. 
 -`"0.00"`: Ensures the numeric value is displayed with exactly two decimal places. For example, `3.5` is displayed as `3.50` and `3` as `3.00`. 
 -`"0"`: Displays only the integer part of a numeric value, rounding if necessary. For example, `3.5` becomes `4` and `3.0` becomes `3`.
