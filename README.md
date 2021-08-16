# codetender-mkdocs

This template will create a sample project for building documentation using [mkdocs](https://www.mkdocs.org). This
project assumes a convention where ach component is added to the main repository as a submodule in the `comopnents`
folder and each component contains documentation in a `docs` folder. In order to build a working example, the
following structure is created:

```
components
+- comp1
   +- docs
      +- README.md
+- comp2
   +- docs
      +- README.md
```

The `comp1` and `comp2` folders should be removed and replaced as desired.

The `mkdocs.yml` file includes a sample table of contents with a single file as part of the main project (`index.md`)
and the 2 component files. This file should also be modified to represent the contents of your documentation. The
example uses the `readthedocs` theme so change the theme if desired.

## Installing

```bash
$ yarn global add codetender
# or
$ npm i -g codetender
$ codetender new douglampe/codetender-mkdocs-site MySiteName
```

## Build Scripts

The template includes the following scripts which can be used to build the documentation site:

- **find-components** - Searches for all folders with a relative path of `./components/[folder]/docs` and copies the contents to `./docs/[folder]
- **build** - Runs a docker container which builds the site based on the `mkdocs.yml` file and contents of the `docs`
folder. Output is placed in the `site` folder
- **serve.sh** - Runs a docker container which runs the mkdocs development server mapped to the local port `:8000`.