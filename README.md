# slp-cpx-refl-gp

This repository contains all the programs used in the paper
*'The strong Lefschetz property for coinvariant rings of finite complex reflection groups'*
by Akihito Wachi
(in preparation on 25 Mar 2023).

In the paper we prove the strong Lefschetz property for the
coinvariant rings of irreducible finite complex reflection groups
except one type (No. 34) in Shephard-Todd's classification [ST].

[ST] G. C. Shephard and J. A. Todd.
Finite unitary reflection groups. 
Canadian J. Math., 6:274–304, 1954.

## The Strong Lefschetz Property for Coinvariant Rings of Complex Reflection Groups 

When a finite complex reflection group acts on the polynomial ring *R*
in *n* variables over the complex number field
via the reflection representation,
the invariant subring is generated 
by *n* algebraically independent homogeneous polynomials,
which are called **fundamental invariants**,
say *f<sub>1*, ..., *f<sub>n*.

The quotient ring *R / (f<sub>1*, ..., *f<sub>n)* is called
the **coinvariant ring**.

The **strong Lefschetz property**
(see [LNM] for definition) of these coinvariant rings
are already proved for some of irreducible complex reflection groups,
and there are nine remaining types.

Once we obtain the fundamental invariants explicitly,
we can make computer programs to check the strong Lefschetz property,
and we prove the strong Lefschetz property for 
eight types out of nine remaining types
using programs in this repository.

The eight types are 
Nos. 24--27 (rank 3),
Nos. 29, 31, 32 (rank 4)
and
No. 33 (rank 5)
in Shephard-Todd's classification [ST].

We have no proof for the remaining one case No. 34 (rank 6),
but it is natural to conjecture it has the strong Lefschetz property.

[LNM] T. Harima, T. Maeno, H. Morita, Y. Numata, A. Wachi, J. Watanabe.
The Lefschetz Properties.
Lecture Notes in Mathematics 2080 (2013), Springer-Verlag.

## Required Time
 
The programs are run on MacBook Air M1 2020 with 8GB memory.
I set up "Debian GNU/Linux 11 (bullseye)" on a virtual machine,
assigned 6GB memory,
and installed Macaulay2 using the Synaptic package manager.

The programs takes the following time to return the result.
If *mod* is written, the time is by programs over a finite field.
For example,
No. 29 takes 4min35sec over the rational number field,
and takes 2sec over a finite field of characteristic 43.

+ No. 24 < 1sec
+ No. 25 < 1sec
+ No. 26 < 1sec
+ No. 27 11sec
+ No. 29 4min35sec, 2sec (mod 43)
+ No. 31 1min25sec (mod 61)
+ No. 32 45min (mod 83)
+ No. 33 20min (mod 47)


## Description of Files

The files in this repository are as follows.
Most programs are Macaulay2 codes.

### Check the Strong Lefschetz Property 

```
st-??.m2 (?? = 24, 25, 26, 27, 29, 31, 32, 33)
usage: $ M2 st-24.m2 # for example
```

checks the strong Lefschetz property for the coinvariant ring of
complex reflection group of No. ??.

```
st-??-modp.m2 (?? = 24, 25, 26, 29, 31, 32, 33)
usage: $ M2 st-24-modp.m2 # for example
```

checks the strong Lefschetz property for the coinvariant ring of
complex reflection group of No. ?? (except No. 27) by using a finite
field.

### Helper Functions

```
st-??-def.m2 (?? = 24, 25, 26, 27, 29, 31, 32, 33)
```

defines fundamental invariants of the complex reflection group of
No. ??.

```
slp-lib.m2
```

contains functions used in 'st-??.m2' and 'st-??-modp.m2'.  These
functions check the strong Lefschetz property for graded Artinian
rings.

### Test Scripts

```
slp-lib-test.m2
usage: $ M2 slp-lib-test.m2
```

tests the functions in 'slp-lib.m2'.

```
st-??-test.m2 (?? = 24, 25, 26, 27, 29, 31, 32, 33)
usage: $ M2 st-24-test.m2 # for example
```

tests several properties of fundamental invariants of No. ?? defined
in 'st-??-def.m2'.

Among others 'st-33-test.m2' contains a lot of tests.
The fundamental invariants for No. 33 are defined in [B],
and there are a few misprints.
In 'st-33-def.m2' they are corrected,
and the correctness of the correction is checked by 'st-33-test.m2'.
See comments in 'st-33-test.m2' for details.

[B] Heinrich Burkhardt.
Untersuchungen aus dem Gebiete der hyperelliptischen Modulfunctionen.
Math. Ann., 38(2):161–224, 1891.

```
test-all.sh
usage: $ sh test-all.sh
```

invokes all the test scripts: 'slp-lib-test.m2' and 'st-??-test.m2',
where '??' = 24, 25, 26, 27, 29, 31, 32, 33.

```
test-lib.m2
```

contains functions used in 'st-??-test.m2'.
