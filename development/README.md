<br>

The repository's development notes.

<br>

## Environments


### Remote Development

The container image depends on

* requirements.txt
* Dockerfile

The image is built via the command

```shell
docker build . --file .devcontainer/Dockerfile --tag transcribe
```

Subsequently, an instance of the image, i.e., a container,

```shell
docker run --rm -i -t -p 127.0.0.1:10000:8888 -w /app --mount type=bind,src="$(pwd)",target=/app transcribe
```

is run for development purposes.

<br>

### Temporary Local Development

The script 

```shell
source environment.sh
```

runs `environment.yml`, which uses the same *requirements.txt* as Dockerfile.

<br>
<br>

## Sphinx

### Usage Notes

Initialise Sphinx

```shell
mkdir docs && cd docs && sphinx-quickstart
```

Build

```shell
sphinx-build -E -b html docs/source docs/build/html
```

<br>

### References

* [Sphinx Book Theme](https://sphinx-book-theme.readthedocs.io/en/stable/index.html)
  * [Sample](https://sphinx-book-theme.readthedocs.io/en/stable/reference/kitchen-sink/index.html)
* [Sphinx Design: Sphinx Book Theme](https://sphinx-design.readthedocs.io/en/sbt-theme/)

* [Sphinx](https://www.sphinx-doc.org/en/master/index.html)
  * [Sphinx Directives](https://www.sphinx-doc.org/en/master/usage/restructuredtext/directives.html)
* [reStructuredText](https://docutils.sourceforge.io/rst.html)
  * [Sphinx reStructuredText Primer](https://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html)
  * [reStructuredText Card](https://bashtage.github.io/sphinx-material/rst-cheatsheet/rst-cheatsheet.html)

* [MyST](https://myst-parser.readthedocs.io/en/latest/index.html)
  * [Organising Content](https://myst-parser.readthedocs.io/en/latest/syntax/organising_content.html#using-toctree-to-include-other-documents-as-children)
* [Extensions](https://myst-parser.readthedocs.io/en/latest/intro.html#extending-sphinx)
  * [mermaid](https://mermaid.js.org/intro/)
  * [tippy](https://sphinx-tippy.readthedocs.io/en/latest/)

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
