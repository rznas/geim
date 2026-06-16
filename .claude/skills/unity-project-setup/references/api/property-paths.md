<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/property-paths.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Property paths

Property paths are strings that describe the location of a property within a container object.

You can use property paths to get or set the data of an object at a specific path or accept a visitor on a sub-property of an object.

Property paths are constructed from strings and resolve a specific property instance from a root object. For example, the path `foo.bar.baz[12]` resolves the 13th element of the `baz` list container within the `bar` container, which is nested inside the `foo` container.

To create and manipulate property paths, use the `Unity.Properties.PropertyPath` class.

You can use property paths to do the following:

- Get or set the data of an object at a specific path.
- Accept a visitor on a sub-property of an object.

For an example of how to use property paths to accept a visitor on a sub-property of an object, refer to the Use `PropertyVisitor` to create a property visitor example.

## Performance considerations

`Unity.Properties.PropertyPath` is an **immutable** struct type. When you construct a property path from a string, allocations occur for sub-string extraction.

The following table lists the allocation behaviors when a property path is constructed from a string:

| String | Length | Allocation behavior |
| --- | --- | --- |
| `"Path"` | 1 | No allocation: the entire path is a single segment and the original string is referenced as-is. |
| `"Path.To"` | 2 | Two allocations: allocate two new substring instances for `"Path"` and `"To"` after splitting on `.` separators. |
| `"Path.To[2]"` | 3 | Three allocations: substrings for `"Path"` and `"To"`, plus parsing/extraction for the index `"[2]"`. |
| `"Path.To[2].My"` | 4 | Four allocations: substrings for `"Path"`, `"To"`, and `"My"`, plus parsing/extraction for the index `"[2]"`. |
| `"Path.To[2].My.Value"` | 5 | Six allocations: substrings for `"Path"`, `"To"`, `"My"`, and `"Value"`, parsing/extraction for `"[2]"`, and an array allocation to hold the expanded parts. |

A `PropertyPath` is an array of parts of type `PropertyPathPart` and four parts are inlined directly before allocating an array for any additional parts. The following table lists the allocation behaviors when a property path is constructed from parts:

| String | Length | Allocation behavior |
| --- | --- | --- |
| `PropertyPath.FromName("Path")` | 1 | No allocation: uses the first inlined `PropertyPathPart`. |
| `PropertyPath.AppendName(previous, "To")` | 2 | No allocation: uses the second inlined `PropertyPathPart`. |
| `PropertyPath.AppendIndex(previous, 2)` | 3 | No allocation: uses the third inlined `PropertyPathPart`. |
| `PropertyPath.AppendName(previous, "My")` | 4 | No allocation: uses the fourth inlined `PropertyPathPart`. |
| `PropertyPath.AppendName(previous, "Value")` | 5 | One allocation: allocates a new array to contain additional property path parts. |

To optimize performance and avoid allocating memory:

- Initialize and cache property paths during initialization routines.
- Combine or append property path parts instead of constructing it from a string, up to four parts.

## Additional resources

- Property bags
- Property visitors
- Use `PropertyVisitor` to create a property visitor
- Use low-level APIs to create a property visitor
