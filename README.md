# gedet-plots

Beatiful HPGe detector drawings with [Asymptote](https://asymptote.sourceforge.io/).

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
Produce a PDF image of the (2D) GERDA Phase II detector array (*à la* Konstantin):
```console
$ asy -f pdf gerda-phII-array-2D.asy
```

- [Asymptote documentation](https://asymptote.sourceforge.io/doc/)
- [GL viewer commands](https://asymptote.sourceforge.io/doc/three.html#three)
