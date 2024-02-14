(episode-admin)=
# Administering your hub

teaching: 0
exercises: 0

:::::{card} 
OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
Questions

- What is the difference between JupyterHub and JupyterLab?
- Who has control over access to a Hub?
- What's really happening in the cloud when I run a server?

:::

:::{grid-item}
Objectives

- Add users to the hub with GitHub
- Configure server options (CPU, GPU, RAM)
- Stop and restart a server

:::

:::::

## Exercises

::::{dropdown} GitHub Organisations and Teams
:open:

Fill in the blanks with the following words: *organization, team, maintainers, owners, non-members, existing members* (you may use one word more than once).

"___s are groups of ___ members that reflect your group's structure with cascading access permissions. ___ have permission to invite ___ to the organisation, whereas ___ have the permission to invite ___ of the organisation to a ___."

:::{dropdown} Solution
"**Team**s are groups of **organization** members that reflect your group's structure with cascading access permissions. **Owners** have permission to invite **non-members** to the organisation, whereas **Maintainers** have permission to invite **existing members** of the organisation to a **team**."

:::

::::

::::{dropdown} Optimise server resources for your work
:open:

In each scenario, select the option that makes best use out of the following server resources: *Shared Small: 1–4 CPU, 8–32 GB RAM, Small: 4 CPU, 32 GB RAM, Medium: 16 CPU, 128 GB RAM, Large: 64 CPU, 512 GB RAM*.

a. Run a software pipeline that has a single-thread task requiring 2GB of RAM and 60 tasks in total.

b. Create documentation and edit text files.

c. Compile a software program that ran out of memory and failed after initially building on a *Shared Small* machine.

d. Preprocess a dataset consisting of 10,000 images, where each image is 16 MB in size.

:::{dropdown} Solution
a. *Medium: 16 CPU, 128 GB RAM* – the memory required is $ 60 \times 2 \, \mathrm{GB} = 120 \, \mathrm{GB}$, therefore the RAM on a *Medium* machine is sufficient.

b. *Shared Small: 1–4 CPU, 8–32 GB RAM* – this is not a computationally intensive task so a machine shared with other users is sufficient.

c. *Small: 4 CPU, 32 GB RAM* – the task failed on a *Shared Small* machine and we recommend sizing up incrementally if you are unsure of the server resources you need.

d. *Large: 64 CPU, 512 GB RAM* – the total dataset size is $10000 \times 16 \, \mathrm{MB} = 160 000 \, \mathrm{MB} = 160 \, \mathrm{GB}$, which is too large for the *Medium* machine to hold in memory at once. Alternatively, you could chunk up your dataset and preprocess each batch on a smaller machine, which would be slower. Image preprocessing is often a CPU bound process in deep learning workflows, so a *Large* machine with more CPU cores is best for performance.

:::

::::

::::{dropdown} User server management
:open:

Are the following statements *True* or *False*?

a. Closing the browser window is enough to stop a server.

b. Stopping a server when a user is finished with their work reduces costs and carbon emissions.

c. Stopping and restarting a server removes `pip` and `conda` user-installed packages and restores a clean state. 

d. A user server will continue to run indefinitely unless stopped.

:::{dropdown} Solution
a. *False* – the server will continue to run unless the *Stop my Server* button is clicked or will be automatically culled after 1 hour of inactivity by default.  

b. *True* – running a server utilises computational resources that are billed by the cloud provider and consumes energy.  

c. *True* – sometimes user-installed packages can introduce software dependency conflicts that can be removed by restarting the server.  

d. *False* – servers are culled after 1 hour of inactivity by default. If a user requires a long-running process exceeding this time period, then they should request this through their Hub Champion.

:::

::::

:::{card} 
KEY POINTS
^^^
- As a Hub Champion your main tool is JupyterHub.
- You have control over who has access to your Hub 
- A Hub in a cloud is just a computer

:::
