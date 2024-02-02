# JupyterHub Administration to Empower Research Communities

This repo contains the Jupyter Book source files for the Hub Champion Training.

## About

This lesson is aimed at Hub Champions in charge of 2i2c managed JupyterHubs in the cloud. Learn the fundamentals of adminstering your hub and providing user support to your research and education communities.  

Training is delivered over two synchronous workshops, each two hours in length a week apart. The week in between is dedicated to self-guided study with asynchronous support provided by the instructors.

> [!WARNING]
> This lesson is under active development and not ready for teaching yet.  

> [!NOTE]
> TODO: Link to the Spanish repo.

## Getting Started

We recommend editing the contents of this repo using the 2i2c Community Showcase Hub.

> [!NOTE]
> If you require collaborator access to this repo, please [Get in Touch](#get-in-touch).

1. Access the 2i2c Community Showcase Hub at [https://showcase.2i2c.cloud/](https://showcase.2i2c.cloud/). If you require authorisation to access this hub, please [Get in Touch](#get-in-touch).

1. Select the *Shared Small: 1-4 CPU, 8-32 GB* server option and in the *Image* dropdown box select *Handbook Authoring*.

1. Once the JupyterLab interface has loaded, set up GitHub authentication with `gh-scoped-creds`. This allows you to pull and push to GitHub repos. To enable this, open a terminal, run the command

   ```shell
   jovyan@jupyter-user:~$ gh-scoped-creds
   ```
   
   and follow the prompts to enter your code at [https://github.com/login/device](https://github.com/login/device)

1. Git clone [this project repo](https://github.com/czi-catalystproject/website) using the Terminal with the command

   ```shell
   jovyan@jupyter-user:~$ git clone https://github.com/czi-catalystproject/website.git
   ```
   
1. Follow the [how-to-guide](https://2i2c.org/community-showcase/community/content/authoring.html) for authoring and previewing content using Jupyter Book.

> [!CAUTION]
> We do not recommend entering your GitHub credentials (GitHub password, personal access tokens or otherwise) on any kind of shared infrastructure (e.g. private and public cloud, HPC, any remote machine) as this information will be at risk. We highly advise using `gh-scoped-creds` for authentication on our hubs. Read [this article](https://blog.jupyter.org/securely-pushing-to-github-from-a-jupyterhub-3ee42dfdc54f) for more information.

<details>
<summary>NOTE: GitHub permissions for 2i2c-org and czi-catalystproject owners</summary>

These are extra instructions for GitHub [2i2c-org](https://github.com/2i2c-org) and [czi-catalystproject](https://github.com/czi-catalystproject) owners to grant permissions to collaborators when requested.

**Access to the Community Showcase Hub**

Add the user to the `2i2c-org/Research-Delight-Team` for access.

**Add collaborator to [this project repo](https://github.com/czi-catalystproject/website)**

Go to the [GH repo](https://github.com/czi-catalystproject/website), click *Settings -> Access - Collaborators and teams* and add the relevant user or team. Assign the *Write* role in the first instance (this can be upgraded later if needed).

**Info about `gh-scoped-creds` and GitHub App**

The GitHub App [2i2c Community Showcase Hub](https://showcase.2i2c.cloud/) is currently installed on `czi-catalystproject/website` and `czi-catalystproject/hub-champion-training` repos to enable `gh-scoped-creds`.
</details>

## Authors

- [Toby Hodges](https://github.com/tobyhodges)
- [Sabrina Lopez](https://github.com/SLLDeC)
- [James Munroe](https://github.com/jmunroe)
- [Jenny Wong](https://github.com/jnywong)

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

See [LICENSE.md](./LICENSE.md)

## Acknowledgements and Funding

We would like to acknowledge Chan Zuckerberg Initiative funding for the "A Collaborative Interactive Computing Service Model for Global Communities" project and our partner organisations:

- [2i2c](https://2i2c.org/)
- [The Carpentries](https://carpentries.org/about/)
- [Center for Scientific Collaboration and Community Engagement](https://www.cscce.org/)
- [Invest in Open Infrastructure](https://investinopen.org/)
- [MetaDocencia](https://www.metadocencia.org/)
- [Open Life Science](https://openlifesci.org/)

## Contacting us

If you would like to get in touch with us, then please open an [issue](https://github.com/czi-catalystproject/hub-champion-training/issues) or email [support@2i2c.org](mailto:support@2i2c.org).
