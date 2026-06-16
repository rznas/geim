<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection of common math functions.

### Static Properties

| Property | Description |
| --- | --- |
| Deg2Rad | Degrees-to-radians conversion constant (Read Only). |
| Epsilon | The smallest positive non-zero value that a float can represent. |
| Infinity | A representation of positive infinity (Read Only). |
| NegativeInfinity | A representation of negative infinity (Read Only). |
| PI | The well-known 3.14159265358979... value (Read Only). |
| Rad2Deg | Radians-to-degrees conversion constant (Read Only). |

### Static Methods

| Method | Description |
| --- | --- |
| Abs | Returns the absolute value of f. |
| Acos | Returns the arc-cosine of f - the angle in radians whose cosine is f. |
| Approximately | Compares two floating point values and returns true if they are similar. |
| Asin | Returns the arc-sine of f - the angle in radians whose sine is f. |
| Atan | Returns the arc-tangent of f - the angle in radians whose tangent is f. |
| Atan2 | Returns the angle in radians whose Tan is y/x. |
| Ceil | Returns the smallest integer number greater than or equal to f. |
| CeilToInt | Returns the smallest integer number (cast as int) greater than or equal to f. |
| Clamp | Clamps the given value between the given minimum float and maximum float values. Returns the given value if it is within the minimum and maximum range. |
| Clamp01 | Clamps value between 0 and 1 and returns value. |
| ClosestPowerOfTwo | Returns the closest power of two value. |
| CorrelatedColorTemperatureToRGB | Convert a color temperature in Kelvin to RGB color. |
| Cos | Returns the cosine for the input angle f. |
| DeltaAngle | Calculates the shortest difference between two angles. |
| Exp | Returns the result of raising euler's number (e) to the power power. |
| FloatToHalf | Encode a floating point value into a 16-bit representation. |
| Floor | Returns the greatest integer number smaller than or equal to f. |
| FloorToInt | Returns the greatest integer number (cast as int) smaller than or equal to f. |
| GammaToLinearSpace | Converts the given value from gamma (sRGB) to linear color space. |
| HalfToFloat | Convert a half precision float to a 32-bit floating point value. |
| InverseLerp | Determines where a value lies between two points. |
| IsPowerOfTwo | Returns true if the value is power of two. |
| Lerp | Linearly interpolates between a and b by t. |
| LerpAngle | Same as Lerp but makes sure the values interpolate correctly when they wrap around 360 degrees. |
| LerpUnclamped | Linearly interpolates between a and b by t with no limit to t. |
| LinearToGammaSpace | Converts the given value from linear to gamma (sRGB) color space. |
| Log | Returns the logarithm of a specified number in a specified base. |
| Log10 | Returns the base 10 logarithm of a specified number. |
| Max | Returns the maximum of two or more values. |
| Min | Returns the minimum of two or more values. |
| MoveTowards | Moves a value current towards target. |
| MoveTowardsAngle | Same as MoveTowards but makes sure the values interpolate correctly when they wrap around 360 degrees. |
| NextPowerOfTwo | Returns the next power of two that is equal to, or greater than, the argument. |
| PerlinNoise | Generate 2D Perlin noise. |
| PerlinNoise1D | Generates a 1D pseudo-random pattern of float values across a 2D plane. |
| PingPong | PingPong returns a value that increments and decrements between zero and the length. It follows the triangle wave formula where the bottom is set to zero and the peak is set to length. |
| Pow | Returns the result of raising f to the power p. |
| Repeat | Loops the value t, so that it is never larger than length and never smaller than 0. |
| Round | Returns f rounded to the nearest integer number. |
| RoundToInt | Returns f rounded to the nearest integer number (cast as int). |
| Sign | Returns the mathematical sign of f. |
| Sin | Returns the sine for the input angle f. |
| SmoothDamp | Gradually moves the current value towards a target value, over a specified time and at a specified velocity. |
| SmoothDampAngle | Gradually changes an angle given in degrees towards a desired goal angle over time. |
| SmoothStep | Interpolates between from and to with smoothing at the limits. |
| Sqrt | Returns square root of f (real number whose square equals f). |
| Tan | Returns the tangent of angle f in radians. |
