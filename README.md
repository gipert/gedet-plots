# gedet-plots

Beatiful HPGe detector drawings with [Asymptote](https://asymptote.sourceforge.io/).

<p align="center">
  <img src="https://raw.githubusercontent.com/gipert/gedet-plots/master/.github/gerda-events.png" alt="GERDA events">
</p>

### Usage

Asymptote is distributed with [TeX Live](https://www.tug.org/texlive/). Browse
the `examples` folder to learn about the `gedetplots` library API. Run one of
the examples interactively with `asy -V file.asy` and enjoy.

### Examples

Interactive visualization of the GERDA Phase II detector array:
```console
$ asy -V gerda-phII-array.asy
```
Produce a PNG image
```console
$ asy -render=16 -f png gerda-phII-array.asy
```
Reproduce a PDF image of the (2D) GERDA Phase II detector array (Fig. 32 in [Eur. Phys. J. C 78 (2018) 388](https://doi.org/10.1140/epjc/s10052-018-5812-2)):
```console
$ asy -f pdf gerda-phII-array-2D.asy
```
<p align="center">
  <img src="https://raw.githubusercontent.com/gipert/gedet-plots/master/.github/gerda-phII-array-2D.png" alt="Array schematic" width="70%">
</p>

- [Asymptote documentation](https://asymptote.sourceforge.io/doc/)
- [GL viewer commands](https://asymptote.sourceforge.io/doc/three.html#three)
