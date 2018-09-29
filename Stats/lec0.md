## Lecture 0 9/28

m = slope = rise / run

- For 2D, you need two points to get a line.
- For 3D, you need three points to get a plane.
- For 4D, you need four points to get a hyperplane. (x1, y1, z1, u1), 1-4

Linear functions, like f(x) = mx + b, are examples of deterministic functions.  *(Recall, a function is just mathematical mapping from one set, the domain, to another set, the codomain.)*  But a deterministic function is one where the same input yields the same output, but a probabilistic function is one where the same input can yield different outputs. Even if the range of the codomain is two numbers, but the same input doesn't guarantee to yield the same output, it's probabilistic.

*Examples:*
- f(x) = ax^2 + bx + c is deterministic function.
- f(x) = 1 half the time, 0 otherwise is probabilistic function.

In this class, we focus on probabilistic distributions instead of prob. functions. Most commonly, the *Normal* (Gaussian) *distribution.* This has the following characteristics:

- midpoint is set by mean parameter μ, mu (the basic definition has scientific applications, but we use it differently in stats)
- width of curve is set by another parameter σ, std. dev. (important because it tells you how wide the curve is.)
- some statisticians use σ^2 instead of σ.