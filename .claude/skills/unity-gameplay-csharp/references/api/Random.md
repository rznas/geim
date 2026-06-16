<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Easily generate random data for games.

This static class provides several easy game-oriented ways of generating [pseudorandom numbers](https://en.wikipedia.org/wiki/Pseudorandomness).

The generator is an [Xorshift 128](http://en.wikipedia.org/wiki/Xorshift) algorithm, based on the paper [Xorshift RNGs](http://www.jstatsoft.org/v08/i14/paper) by George Marsaglia. It is statically initialized with a high-[entropy](https://en.wikipedia.org/wiki/Entropy_(information_theory)) [seed](https://en.wikipedia.org/wiki/Random_seed) from the operating system, and stored in native memory where it will survive domain reloads. This means that the generator is seeded exactly once on process start, and after that is left entirely under script control.

For more details on the seed, including how to manage it yourself, see InitState. To learn how to save and restore the state of Random, see state.

**Versus System.Random**

This class has the same name as the .NET Framework class [System.Random](https://docs.microsoft.com/en-us/dotnet/api/system.random) and serves a similar purpose, but differs in some key ways:

*Static vs instanced*
 `UnityEngine.Random` is a static class, and so its state is globally shared. Getting random numbers is easy, because there is no need to `new` an instance and manage its storage. However, static state is problematic when working with threads or jobs (the generator will error if used outside the main thread), or if multiple independent random number generators are required. In those cases, managing instances of `System.Random` would be a better option.

*Float upper bounds are inclusive*
 All properties and methods in `UnityEngine.Random` that work with or derive work from float-based randomness (for example value or ColorHSV) will use an *inclusive* upper bound. This means that it is possible, though as rare as any other given value, for the max to be randomly returned. In contrast, `System.Random.NextDouble()` has an *exclusive* maximum, and will never return the maximum value, but only a number slightly below it.

*Performance*
 Methods in `UnityEngine.Random` have been measured to be between 20% and 40% faster than their equivalents in `System.Random`.

*Name resolution ambiguity*
 Because the classes share the name `Random`, it can be easy to get a [CS0104](https://docs.microsoft.com/en-us/dotnet/csharp/misc/cs0104) "ambiguous reference" compiler error if the `System` and `UnityEngine` namespaces are both brought in via `using`. To disambiguate, either use an alias `using Random = UnityEngine.Random;`, fully-qualify the typename e.g. `UnityEngine.Random.InitState(123);`, or eliminate the `using System` and fully-qualify or alias types from that namespace instead.

### Static Properties

| Property | Description |
| --- | --- |
| insideUnitCircle | Returns a random point inside or on a circle with radius 1.0 (Read Only). |
| insideUnitSphere | Returns a random point inside or on a sphere with radius 1.0 (Read Only). |
| onUnitCircle | Returns a random point on the circumference of a circle with radius 1.0 (Read Only). |
| onUnitSphere | Returns a random point on the surface of a sphere with radius 1.0 (Read Only). |
| rotation | Returns a random rotation (Read Only). |
| rotationUniform | Returns a random rotation with uniform distribution (Read Only). |
| state | Gets or sets the full internal state of the random number generator. |
| value | Returns a random float within [0.0..1.0] (range is inclusive) (Read Only). |

### Static Methods

| Method | Description |
| --- | --- |
| ColorHSV | Generates a random color from HSV and alpha ranges. |
| InitState | Initializes the random number generator state with a seed. |
| Range | Returns a random float within [minInclusive..maxInclusive] (range is inclusive). |
