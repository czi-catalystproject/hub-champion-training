# Contributing

## Getting Started

We recommend editing the contents of this repo using the 2i2c Community Showcase Hub.

> [!NOTE]
> If you require collaborator access to contribute to this repo, please [Get in Touch](README.md#contacting-us). Otherwise, you can fork this repository instead.

1. Access the 2i2c Community Showcase Hub at [https://showcase.2i2c.cloud/](https://showcase.2i2c.cloud/). If you require authorisation to access this hub, please [Get in Touch](README.md#contacting-us).

1. Select the *Shared Small: 1-4 CPU, 8-32 GB* server option and in the *Image* dropdown box select *Handbook Authoring*.

1. Once the JupyterLab interface has loaded, set up GitHub authentication with `gh-scoped-creds`. This allows you to pull and push to GitHub repos securely. To enable this, open a terminal, run the command

   ```bash
   gh-scoped-creds
   ```
   
   and follow the prompts to enter your code at [https://github.com/login/device](https://github.com/login/device)

1. Git clone [this project repo](https://github.com/czi-catalystproject/hub-champion-training) using the Terminal with the command

   ```bash
   git clone https://github.com/czi-catalystproject/hub-champion-training.git
   ```
   
1. Follow the instructions in [Localisation to Spanish](#localisation-to-spanish) for authoring and previewing content using Jupyter Book.

> [!CAUTION]
> We do not recommend entering your GitHub credentials (GitHub password, personal access tokens or otherwise) on any kind of shared infrastructure (e.g. private and public cloud, HPC, any remote machine) as this information will be at risk. We highly advise using `gh-scoped-creds` for authentication on our hubs. Read [this article](https://blog.jupyter.org/securely-pushing-to-github-from-a-jupyterhub-3ee42dfdc54f) for more information.

<details>
<summary>NOTE: GitHub permissions for 2i2c-org and czi-catalystproject owners</summary>

These are extra instructions for GitHub [2i2c-org](https://github.com/2i2c-org) and [czi-catalystproject](https://github.com/czi-catalystproject) owners to grant permissions to collaborators when requested.

**Access to the Community Showcase Hub**

Add the Hub Champion to the `2i2c-community-showcase/access-2i2c-showcase` team with maintainer rights, and community/test users as a general member of `2i2c-community-showcase`. This is so that Hub Admins can then add community users/test users to the `access-2i2c-showcase` team using their maintainer rights to *practise* granting access to the Showcase Hub as part of their hub champion training.

**Add collaborator to [this project repo](https://github.com/czi-catalystproject/hub-champion-training)**

Go to the [GH repo](https://github.com/czi-catalystproject/hub-champion-training), click *Settings -> Access - Collaborators and teams* and add the relevant user or team. Assign the *Write* role in the first instance (this can be upgraded later if needed).

**Info about `gh-scoped-creds` and GitHub App**

The GitHub App [2i2c Community Showcase Hub](https://showcase.2i2c.cloud/) is currently installed on `czi-catalystproject/website` and `czi-catalystproject/hub-champion-training` repos to enable `gh-scoped-creds`.
</details>

## Localisation to Spanish

The following are instructions for localising the Jupyter Book to Spanish, adapted from the [Sphinx documentation](https://www.sphinx-doc.org/en/master/usage/advanced/intl.html).

1. Open a Terminal and navigate to the `hub-champion-training` folder

   ```bash
   cd hub-champion-training/
   ```
   
1. If a `config.py` file does not exist in this folder, **or** if you have made changes to `_config.yml`, then automatically generate this from the `_config.yml` with

   ```bash 
   jupyter-book config sphinx .
   ```
   
   (See [Jupyter Book docs](https://jupyterbook.org/en/stable/explain/sphinx.html#jupyter-book-is-a-distribution-of-sphinx))

1. Generate `.pot` files with `gettext` to extract all translatable strings from the doctree

   ```bash
   jupyter-book build --builder custom --custom-builder gettext .
   ```
   
   The generated `.pot` files will be placed in the `_build/gettext` directory. The `.pot` files are empty template files and need to be updated if the source content changes. The `msgid` line contains the source text. The empty `msgstr` line will eventually contain the actual translation in the `.po` file.

1. Create `.po` files in the `locale` folder in the `es_LA` target language (ensure that the `locale` folder matches the `locale_dirs` setting in `_config.yml`)

   ```bash
   sphinx-intl update -p _build/gettext -d locale -l es_LA
   ```
   
   The generated `.po` files are the files that will contain the actual translations in the `msgstr` lines that are created in the next step.
   
1. Translate the `.po` files located inside the `locale/es_LA/LC_MESSAGES` folder as required, e.g. with human translation services, machine translation or professional translation services with [Crowdin](https://crowdin.com/).

1. Build the HTML files in English (the source language)

   ```bash
   jupyter-book build .
   ```
   
1. Build the HTML files in Spanish (the target language)

   ```bash
   jupyter-book config sphinx .
   sphinx-build -b html -D language=es_LA . _build/html/es
   ```
   
1. Open a **new** Terminal and navigate to the HTML folder using the command

   ```bash
   cd hub-champion-training/_build/html/
   ```

1. Run a simple Python webserver with the command

   ```bash
   python -m http.server
   ```

1. Open a new browser tab and preview the Spanish version of the website by opening the following URL

   ```bash 
   https://<your-hub-url>/user/<your-username>/proxy/8000/es/index.html
   ```

> [!TIP]
> If you run into the following error
> `sphinx.errors.SphinxError: This environment is incompatible with the selected builder, please choose another doctree directory.`
> try cleaning the build outputs first before building again
> ```bash
> jupyter-book clean .
> jupyter-book build .
> ```

## Deployment

On push to main:

- The Hub Champion Training website will be deployed at [https://czi-catalystproject.github.io/hub-champion-training/](https://czi-catalystproject.github.io/hub-champion-training/) via the GitHub actions defined in `.github/workflows/deploy_website.yml`.
- Changes to the `locale` directory are uploaded to the `l10n` branch on Crowdin via the GitHub actions defined in `.github/workflows/crowdin-action-upload.yml`.

On cron schedule and manual trigger:

- Approved Crowdin translations will be pushed to the `l10n` branch on GitHub and an automatic PR is opened.
- If `l10n` branch already exists on GitHub, then Crowdin translations will be force pushed to the `l10n` branch on GitHub to the existing PR.
- GitHub action is defined in `.github/workflows/crowdin-action-download.yml`.


