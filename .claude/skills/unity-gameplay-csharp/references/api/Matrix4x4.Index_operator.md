<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.Index_operator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access element at [row, column].

Both `row` and `column` must be from 0 to 3 inclusive. A matrix is 4x4 array of numbers, and you can access the individual elements using this function.

Note the standard math notation - row is the first index.

### Description

Access element at sequential index (0..15 inclusive).

A matrix is 4x4 array of numbers (16 numbers in total). You can access the individual elements using "flattened" index with this. The `index` is `row+column*4`.
