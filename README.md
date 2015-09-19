## README

Recently I participated in my first coding competition. As someone without a formal coding background, this competition was a great experience because it exposed me to some of the types of problems that computer science college students might work on in their studies. One of the competition challenges was to create a command line I/O program that makes fractions from fractions. The rules are:

1) Numerators can only be `1` 

2) Any denominator can only be used once

3) Only the largest possible denominators should be used

Input: two integers, separated by one space (representing a fraction)

Output: a sum of fractions

Here are some examples:

Input: `2 7`

Output: `2/7 = 1/4 + 1/28` 

Input: `3 4`

Output: `3/4 = 1/2 + 1/4` 

Input: `5 13`

Output: `5/13 = 1/3 + 1/20 + 1/780`

Input: `85 100`

Output: `85/100 = 1/2 + 1/3 + 1/61 + 1/3661` 

Anyway, you get the idea. I loved, loved, loved this challenge because it's a special math problem at its heart since the program's output is really a sub-series of the classic Harmonic Series (https://en.wikipedia.org/wiki/Harmonic_series_(mathematics)). And, math has a handy dandy theorem that says that any rational fraction can be expressed as a sum of elements from this series (for more reading check out http://lpl.unifr.ch/lpl/lplmodels/puzzles/fractions.pdf). In other words, since the Harmonic series is divergent any rational fraction whose value is arbitrarily large can be written as a sum of elements from this infinite series. Cool, right?

Math aside, arbitrarily large numbers present a problem for computers because they can't handle infinitely large numbers. Take 1/3 for example. We know that 0.33333... continues to infinity, but a computer will only carry the 3's out to a finite point. If we have a fraction, say 5/13, that can be written as 1/3 + (some more fractions), the computer will subtract a number that is slightly smaller than 1/3 from 5/13 before proceeding to find the next fraction that continues the sum. This matters when writing while loops that run while something is greater than zero because this infinite-number-rounding-error will always be greater than zero (though really really small), meaning that the while loop will not break. This is a machine arithmetic challenge.

The point in writing all of this was to explain line 18 of my program. I've set my while loop to run while a modified numerator is slightly larger than zero to adjust for machine rounding error. Please feel free to suggest any improvements. Enjoy!