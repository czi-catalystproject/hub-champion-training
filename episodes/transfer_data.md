(episode-data)=
# Navigating the filesystem and transferring data to and from the hub

<!-- teaching: 30
exercises: 20
word count: 1504 -->

:::::{card}
:class-header: sd-font-weight-bold, sd-bg-primary, sd-text-white

🔍 OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
**Questions**

- Where do I store files on the hub?
- How do I transfer data to and from the hub?
- How do I authorise GitHub to push and pull code to the hub?
:::

:::{grid-item}
**Objectives**

- Recognise and locate your home directory in the JupyterLab and RStudio user interface
- Distribute read-only datasets to all hub users in a shared directory
- Push and pull GitHub repositories to and from the hub with `gh-scoped-creds`
:::

:::::

## Home directory

A hub server comes with its own filesystem that is private to the user and not shared with other hub users. Every user on the hub is given the username `jovyan`[^jovyan] and their home directory is located at

```shell
/home/jovyan
```

[^jovyan]: Fun fact: `jovyan` is a play on the word "Jovian", which is the adjective form of the planet Jupiter 🪐. The word `jovyan` is used to describe members of the [Project Jupyter](https://jupyter.org/) community at large.

Both the JupyterLab and RStudio user interfaces will automatically open the file explorer in the user's home directory in the first instance when a server is launched (see {numref}`fig-jupyterlab` and {numref}`fig-rstudio`).

Files saved in the home directory are persistent and are available on the hub each time a user shuts down and starts a server. 

:::{figure} ../media/episodes/transfer_data/jupyterlab.png
:name: fig-jupyterlab
:alt: The file explorer (highlighted with a blue box) in the JupyterLab user interface.

The file explorer (highlighted with a blue box) in the JupyterLab user interface.
:::

:::{figure} ../media/episodes/transfer_data/rstudio.png
:name: fig-rstudio
:alt: The file explorer (highlighted with a blue box) in the RStudio user interface.

The file explorer (highlighted with a blue box) in the RStudio user interface.
:::

The storage quota for home directories is **not capped and storage costs are charged per gigabyte**. Therefore we strongly suggest this space is used for small files and datasets and **is not suitable for storing large datasets.** 

:::{tip}
Hub champions are responsible for costs incurred from data storage and ensuring their communities understand the potential expenses incurred.
:::

::::{admonition} Exercise: What can you store in your home directory?
:class: exercise

Select all that apply:

- [ ] Notebooks
- [ ] Code
- [ ] Large and/or shared datasets with read-write permissions
- [ ] Text files
- [ ] Small datasets
- [ ] Configuration files
- [ ] Read-only datasets, e.g for teaching
- [ ] Temporary data, e.g. intermediate results from a calculation

:::{admonition} Solution
:class: solution, dropdown

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

## Shared directory

:::{figure} ../media/episodes/transfer_data/shared.png
:alt: The shared-readwrite folder appears for Hub Champions only.
:figclass: margin

The *shared-readwrite* folder appears for Hub Champions only.
:::

All hub users have access to a common *shared* directory from their home directory. This is a read-only directory where users can access large files or datasets for their work and its contents cannot be accidentally modified or deleted.

Hub Champions can populate the *shared directory* by placing files in the *shared-readwrite* directory that appears only in their home directory.

:::::{tip}
**Upload data to the hub**

Upload files to the hub by

::::{tab-set}
:::{tab-item} JupyterLab
:sync: jlab
Clicking the ![*upload*](../media/episodes/transfer_data/jlab-upload.png) button at the top of the file explorer.
:::
:::{tab-item} RStudio
:sync: rstudio
Clicking the ![*upload*](../media/episodes/transfer_data/rstudio-upload.png) button at the top of the file explorer.
:::
::::

**Download data from the hub**

Download files from the hub by

::::{tab-set}
:::{tab-item} JupyterLab
:sync: jlab
Right-clicking on the target file/folder and clicking the ![*download*](../media/episodes/transfer_data/jlab-download.png) button.
:::
:::{tab-item} RStudio
:sync: rstudio
Checking the box next to the target file/folder, clicking the ![*settings*](../media/episodes/transfer_data/rstudio-cog.png) button, choosing the *Export...* option and confirming the filename in the following dialog box.
:::
::::
:::::

## The /tmp directory

The `/tmp` directory is used to temporarily store short-lived files. Any file placed in this directory will last for the duration of your session and will be deleted after you log out. 

This directory is a SSD drive with fast read-write access and up to 50 – 100 GBs of disk space. Ideal use cases for `/tmp` are for processing large datasets that do not need to be stored permanently.

## Cloud Object Storage

Your hub lives in the cloud, therefore another way to store data is using object storage such as Amazon S3 or Google Cloud Storage. This type of storage is ideally suited for persistent, large datasets that would be otherwise expensive to store on a traditional filesystem (i.e. your home, shared or `/tmp` folder) long-term.

This is an advanced topic beyond the scope of the current Hub Champion Training curriculum. More information can be found at the [2i2c Hub Service Guide](https://docs.2i2c.org/user/topics/data/object-storage/).

:::{admonition} Exercise: Data requirements
:class: exercise

Think about the data that you or your community require for your/their work.

- What type of data is it? E.g. tabular data (.csv, .xls), images (.png, .jpg, .bmp), other scientific data formats (.h5, .nc, .fastq)
- How large is a typical dataset?
- Where is the data stored?
- Is the same dataset used by a group of collaborators?

Write up your thoughts in our shared collaborative document.

:::

## Share and manage code with GitHub

GitHub is a popular *hosting platform* for creating, storing, managing and sharing code with collaborators. Code developed on a hub can be synchronised with a remote repository on GitHub, and changes are tracked in a process known as version control. This allows users to compare and even restore different versions of the code and facilitates collaborative work across different machines. Git is a *version control tool* that enables the synchronisation of code with GitHub. On a hub, version control of code is possible by using Git extensions to the user interface. Learn more about how to use these:

 - [Git extension for JupyterLab](https://blog.reviewnb.com/jupyterlab-git-extension/#git-workflow)
 - [Git extension for RStudio](https://docs.posit.co/ide/user/ide/guide/tools/version-control.html#integrations).

:::{margin}
We recommend performing git operations using the HTTPS protocol and not SSH, since on the hub HTTPS will always work behind a firewall or proxy.
:::

When a user pulls and pushes code to a remote repository on GitHub, they will be prompted to provide their GitHub credentials.

:::{warning}
*We do not recommend entering your GitHub credentials (GitHub password, personal access tokens or otherwise) on any kind of shared infrastructure (e.g. private and public cloud, HPC, any remote machine)* as this information will be at risk.

For JupyterLab, we highly advise using `gh-scoped-creds` for authentication on our hubs.

<!-- TODO: For RStudio, we recommend...  -->
:::

(episode-data:using-gh-scoped-creds)=
### Using `gh-scoped-creds`

```{margin}
This feature may not be enabled for all hub configurations. Hub Champions may refer to {ref}`Enabling gh-scoped-creds for your hub<episode-data:enable-gh-scoped-creds>` for more details.
```
Authorisation to pull and push to GitHub is handled with [`gh-scoped-creds`](https://github.com/yuvipanda/gh-scoped-creds/).

1. Open a Terminal.
1. Run the command `gh-scoped-creds`.
```{margin}
If the prompt does not appear and you see `bash: gh-scoped-creds: command not found` instead, then gh-scoped-creds is not installed in the image selected for your server. See the [Hub Service Guide - Customize a community-maintained upstream image](https://docs.2i2c.org/admin/howto/environment/customize-image/) to  add packages to a community-maintained upstream image.
```

1. The following prompt will appear
   ```shell
   jovyan@jupyter-username:~/my-repo$ gh-scoped-creds
   You have 15 minutes to go to https://github.com/login/device and enter the code: XXXX-XXXX
   Waiting....
   ```
   Copy the code from the prompt and paste it into [https://github.com/login/device](https://github.com/login/device) as instructed.
1. Authorise the hub to access GitHub by clicking the green button with the label *Authorize <name of hub>*.
1. You should now be able to pull and push to GitHub from the hub without entering your credentials.

Authorisation will automatically expire after 8 hours (or when your JupyterHub server stops), and you'll have to repeat these steps
to renew.

:::{hint}
If you receive a `Permission denied` error after following these steps, then `gh-scoped-creds` has not been enabled for your hub. Please contact your Hub Champion to request this feature and refer them to the steps in {ref}`Enabling gh-scoped-creds for your hub<episode-data:enable-gh-scoped-creds>`.
:::

(episode-data:enable-gh-scoped-creds)=
### Enabling `gh-scoped-creds` for your hub

If this is not already enabled for your hub, then there are some extra steps for Hub Champions to enable `gh-scoped-creds` (requires GitHub Organization owner permissions).

1. Check that `gh-scoped-creds` is not already enabled for your hub by opening a Terminal and running
   ```shell
   jovyan@jupyter-username:~$ echo $GH_SCOPED_CREDS_CLIENT_ID
   ```
   
   - If this returns nothing, then follow the next step.
   - If this returns a client ID of the form `Iv1.xxxxxxxxxxxxxxxx`, then go to Step 3.
   ```{margin}
   A GitHub App URL is of the form `https://github.com/apps/<gh-app-name>`.
   ```
1. Send a ticket to the [2i2c support desk](https://docs.2i2c.org/support/) and log a feature request for `gh-scoped-creds`. 2i2c will create a GitHub App, provide a public URL of the GitHub App and update the hub configuration to make the `GH_SCOPED_CREDS_CLIENT_ID` and `GH_SCOPED_CREDS_APP_URL` environment variables available in your hub.
1. Check that the GitHub App is installed to your GitHub Organization/GitHub personal account that owns the repositories you would like access to.
   - **GitHub Organization:** Navigate to the GitHub Organization used to manage access to your hub. In this lesson we are using the [2i2c-community-showcase](https://github.com/2i2c-community-showcase) GitHub Organization to manage access to the Community Showcase Hub.
   - **GitHub personal account:** Navigate to your personal GitHub repository that you would like access to on the hub.
   - Click on *{octicon}`gear` Settings > {octicon}`hubot` GitHub Apps*.
   - Under *Installed GitHub Apps*, check whether the GitHub App URL provided by 2i2c matches an app in the list. In the screenshot below, the example GitHub App is called [2i2c Community Showcase Hub GitHub](https://github.com/apps/2i2c-community-showcase-hub).
   ```{image} ../media/episodes/transfer_data/git-check-app.png
   :align: center
   :alt: Screenshot of the Installed GitHub Apps section showing a list of installed apps, namely the 2i2c Community Showcase Hub GitHub App.   
   
   ```
   
   - If the GitHub App is not installed, then follow the next step.
   - If the GitHub App is installed, then go to Step 5.
1. [Install the GitHub App](https://docs.github.com/en/apps/using-github-apps/installing-a-github-app-from-a-third-party) to your GitHub Organization (requires GitHub Organization owner permissions) or personal GitHub account.
   - Navigate to the GitHub App URL provided by 2i2c.
   - Click on the grey *Configure* button to install the GitHub app.
   - Select the GitHub Organization/personal account that you would like to enable `gh-scoped-creds` for.
     ```{image} ../media/episodes/transfer_data/git-install-app-1.png
     :width: 50%
     :align: center
     :alt: Screenshot of the page to install a GitHub App showing how you can select the organisation to enable `gh-scoped-creds` for.
     ```
     ```{margin}
     We highly recommend allowing access only to selected repositories for fine-grained access control. This can be re-configured again later if you wish.
     ```
   - Choose whether to enable `gh-scoped-creds` for all repositories or for only specific repositories and check that `Read and write access to code` is enabled.
     ```{image} ../media/episodes/transfer_data/git-install-app-2.png
     :width: 50%
     :align: center
     :alt: Screenshot of the page to install a GitHub App showing where to select the repositories you want to enable `gh-scoped-creds` for and check for which read-write permissions there are.
     ```
   - Click the green button labelled *Install*.
1. Check that the `gh-scoped-creds` package is installed in your image on the hub.
   - Launch a server with your desired image.
   - Open a Terminal.
   - Run the command `gh-scoped-creds`.
     - Continue with {ref}`Using gh-scoped-creds<episode-data:using-gh-scoped-creds>` as normal.
     - If you see `bash: gh-scoped-creds: command not found`, then the `gh-scoped-creds` package is not installed in the image selected for your server. See the [Hub Service Guide - Customize a community-maintained upstream image](https://docs.2i2c.org/admin/howto/environment/customize-image/) to  add packages to a community-maintained upstream image.

::::{admonition} Exercise: Push GitHub code
:class: exercise

You use the Git JupyterLab extension to push code to a remote repository on GitHub and the following box opens:

:::{image} ../media/episodes/transfer_data/gh-credentials.png
:alt: Information box asking for GitHub credentials such as username and Personal Access Token.
:width: 80%
:align: center

:::  

<br>

What should you do?

1. Enter your GitHub username and Personal Access Token as requested, then click *Save my login temporarily*
1. Click *Cancel*, open a Terminal, enter the command `gh-scoped-creds` and follow the prompt

:::{admonition} Solution
:class: solution, dropdown

The correct answer is 2 – never enter your GitHub credentials (GitHub password, personal access tokens or otherwise) on any kind of shared infrastructure (e.g. private and public cloud, HPC, any remote machine) as this information will be at risk.

:::

::::

:::{card} 
:class-header: sd-font-weight-bold, sd-bg-secondary, sd-text-white

🔑 KEY POINTS
^^^
- Users can store small files and datasets in their home directory that will persist between sessions.
- Hub Champions can distribute large datasets in a read-only *shared* directory.
- Use `gh-scoped-creds` to push and pull code to GitHub.
:::

:::{attention}
Please prepare for the Part Two of the workshop by completing Exercise 1 of the next episode *before* the synchronous session.
:::