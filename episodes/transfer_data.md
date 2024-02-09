(episode-data)=
# Navigating the filesystem and transferring data to and from the hub

teaching: 0
exercises: 0

:::::{card} 
OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
Questions

- TODO
:::

:::{grid-item}
Objectives

- recognise and locate your home directory in JupyterLab/RStudio and in the Terminal
- distribute datasets to all hub users in a shared directory
- push and pull GitHub repos with `gh-scoped-creds`
:::

:::::

## Exercises

::::{dropdown} What should you store in your home directory?
:open:

Select all that apply:

- [ ] Notebooks
- [ ] Code
- [ ] Large and/or shared datasets with read-write permissions
- [ ] Text files
- [ ] Small datasets
- [ ] Configuration files
- [ ] Read-only datasets, e.g for teaching
- [ ] Temporary data, e.g. intermediate results from a calculation

:::{dropdown} Solution

- [x] Notebooks
- [x] Code
- [ ] Large and/or shared datasets with read-write permissions – *consider using Cloud Object Storage or other cloud-native storage solutions*
- [x] Text files
- [x] Small datasets
- [x] Configuration files
- [ ] Read-only datasets, e.g for teaching – *consider placing these files in the `~/shared` directory*
- [ ] Temporary data, e.g. intermediate results from a calculation – *consider using the `/tmp` directory*

:::

::::

:::{dropdown} Data requirements
:open:

Think about the data that you or your community require for your/their work.

- What type of data is it? E.g. tabular data (.csv, .xls), images (.png, .jpg, .bmp), other scientific data formats (.h5, .nc, .fastq)
- How large is the dataset?
- Where is the data stored?
- Is the same dataset used by a group of collaborators?

Write up your thoughts in our shared collaborative document.

:::

::::{dropdown} Push GitHub code
:open:

You use the Git JupyterLab extension to push code to a remote repository on GitHub and the following box opens:

:::{image} ../media/episodes/transfer_data/gh-credentials.png
:alt: Information box asking for GitHub credentials such as username and Personal Access Token.
:width: 80%
:align: center

:::  

<br>

What do you do?

1. Enter your GitHub username and Personal Access Token as requested, then click *Save my login temporarily*
1. Click *Cancel*, open a Terminal, enter the command `gh-scoped-creds` and follow the prompt

:::{dropdown} Solution

The correct answer is 2.  

:::

::::

:::{card} 
KEY POINTS
^^^
- TODO
:::