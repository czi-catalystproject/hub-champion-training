(episode-server)=
# Selecting the optimal server resources for your computational work responsibly

<!-- teaching: 30
exercises: 20 -->

:::::{card} 
OVERVIEW
^^^

::::{grid}
:gutter: 2

:::{grid-item}
Questions

- What's happening in the cloud when I run a server?
- How many CPU cores and RAM do I need?
- How can I reinstate the default environment of a user's server?
- How can I gain control of a user's server for troubleshooting purposes?

:::

:::{grid-item}
Objectives

- Select the most appropriate server resources for computational work
- Stop and restart a user's server
- Support a hub user by gaining control of their server

:::

:::::

## JupyterHub server options

A hub provides interactive computing in the cloud to support research and education workflows for your community. Computational resources, such as the number of {ref}`CPU<glossary:cpu>` cores and {ref}`RAM<glossary:ram>`, can be provisioned on-demand to allow users to scale up or scale down their work as needed.

Once a user is logged into the hub, they can launch a server configured with a set number of CPU cores and RAM.

In this example, we will look at the server options available on the [Community Showcase Hub](https://showcase.2i2c.cloud).

:::{note}
Server options presented can vary for different hubs. Nevertheless, the number of CPU cores and RAM available is always clearly stated and the principles for selecting the optimal server resources for your computational work described in this section can still be applied.

:::

:::{image} ../media/episodes/server_resources/server_options.png
:width: 100%
:alt: Screenshot showing a list of server options available on the Community Showcase Hub.

:::

Here, there are four server options presented

- Shared Small: 1–4 CPU, 8–32 GB RAM
- Small: 4 CPU, 32 GB RAM
- Medium: 16 CPU, 128 GB RAM
- Large: 64 CPU, 512 GB RAM.

We shall explore the *Image* dropdown box further in the next episode, {ref}`episode-images`.

::::{dropdown} Exercise: Local versus Cloud computing – What's the difference?
:open:

How does the number of CPUs and RAM available on the hub compare with your personal computer? What impact does access to these cloud resources have on your user's work?

:::{dropdown} Solution

In general, more CPU cores available in the cloud allow for more work to be done in *parallel* and reduce time to solution (a CPU-bound program). Parallel computing is where multiple CPU cores can be used simultaneously to solve a computational problem, e.g. running the same processing task on several different datasets.  

However, using more CPU cores does not automatically improve performance since the rate at which information is accessed in RAM can become a limiting factor (a memory-bound program), or simply the program is designed to be executed in *serial* and not in parallel.

:::

::::

## Using cloud resources responsibly

By selecting a server option, a user is remotely launching a server that is provided by a commercial vendor, such as Google Cloud, AWS or Microsoft Azure. Selecting a larger server incurs a larger financial cost, as well as an environmental cost! Therefore it is important to use cloud resources responsibly to maximize efficiency and minimize carbon emissions. 

Best practices for using cloud resources responsibly include

- {ref}`shutting down<episode-server:shutdown-server>` a cloud server as soon as you are finished with your work
- selecting the server option with the minimum number of CPU cores and RAM needed to carry out your work
- running code efficiently and developing sustainable research software where possible, e.g. test your program first before scaling to a larger job.

::::{dropdown} Exercise: Optimize server resources for your work
:open:

In each scenario, select the option that makes the best use of the following server resources: *Shared Small: 1–4 CPU, 8–32 GB RAM, Small: 4 CPU, 32 GB RAM, Medium: 16 CPU, 128 GB RAM, Large: 64 CPU, 512 GB RAM*.

a. Run a software pipeline where each task requires 2GB of RAM and 60 tasks in total.

b. Create documentation and edit text files.

c. Preprocess a dataset consisting of 10,000 images, where each image is 16 MB in size.

:::{dropdown} Solution
a. *Medium: 16 CPU, 128 GB RAM* – the memory required is $ 60 \times 2 \, \mathrm{GB} = 120 \, \mathrm{GB}$, therefore the RAM on a *Medium* machine is sufficient.

b. *Shared Small: 1–4 CPU, 8–32 GB RAM* – this is not a computationally intensive task so a machine shared with other users is sufficient.

c. *Large: 64 CPU, 512 GB RAM* – the total dataset size is $10000 \times 16 \, \mathrm{MB} = 160 000 \, \mathrm{MB} = 160 \, \mathrm{GB}$, which is too large for the *Medium* machine to hold in memory at once. Alternatively, you could chunk up your dataset and preprocess each batch on a smaller machine, which would be slower. Image preprocessing is often a CPU-bound process in deep learning workflows, so a *Large* machine with more CPU cores is best for performance.

:::

**Challenge**

Sofía wants to run a new program but does not know its maximum memory requirement. She tried compiling it on a Shared Small machine, where it was initially built but then ran out of memory and failed on execution. Which server configuration should Sofía choose to try to run the program again?

:::{dropdown} Solution
*Small: 4 CPU, 32 GB RAM* – the task failed on a *Shared Small* machine and we recommend sizing up incrementally if you are unsure of the server resources you need.

:::

::::

### Automatic server culling

Hubs automatically cull servers after a period of inactivity to improve resource utilization and safeguard against excessive cloud costs. This occurs after **1 hour** of user inactivity.

:::{tip}
Executing a piece of long-running code with a running kernel is not recognised as user activity on the server and so the process is killed after 1 hour. This is a rare use case of interactive computing on a hub, but this limit can be reconfigured for a particular hub upon request by contacting [2i2c support](#). 

<!-- TODO: Add internal reference for contacting 2i2c support when written up. -->
:::


(episode-server:shutdown-server)=
## Shutting down a server as a user

A user should shut down their server on the hub once they are finished with their work. This can be done manually by applying the following steps.

1. (JupyterLab) Navigate to *File > Hub Control Panel*, or alternatively (JupyterLab and RStudio) navigate to the URL `https://<your-hub-url>.2i2c.cloud/hub/home`
1. In the Hub Control Panel, click on the ![Stop My Server](../media/episodes/server_resources/shutdown-2.png) button

:::{image} ../media/episodes/server_resources/shutdown-1.png
:width: 100%
:alt: Screenshot showing the File > Hub Control Panel menu option in the JupyterLab user interface.

:::

## Managing another user's server as a Hub Champion

Hub Champions have access to an Admin panel from the Hub Control Panel (or the URL `https://<your-hub-url>.2i2c.cloud/hub/admin`).

:::{image} ../media/episodes/server_resources/manage-1.png
:width: 100%
:alt: Screenshot showing the Admin panel available to Hub Champions.

:::

::::{caution}
:::{epigraph}
With great power comes great responsibility.

-- Spiderman
:::
Performing administrative actions as a Hub Champion should be done with great care. Respect the privacy of others and think before you act.

::::

### Stop and restart a user's server

A user's server may sometimes become unresponsive, e.g. issues stemming from self-installed software via `pip` and/or `conda`. Hub Champions can restore user servers to their default environment by stopping and restarting their server by clicking the ![Stop Server](../media/episodes/server_resources/manage-2.png) followed by the ![Start Server](../media/episodes/server_resources/manage-3.png) button next to the user's name from the Admin panel.

:::{note}
Self-installed software packages on the hub are *temporary* and are removed each time a server is shut down to maintain a clean default software environment. Software is provided between sessions by {ref}`episode-images`, which is covered in the next episode.

:::

### Access a user's server

Hub Champions can gain control of a user's server that is currently running by clicking the ![Access Server](../media/episodes/server_resources/manage-4.png) button next to the user's name from the Admin panel.

From here a Hub Champion can navigate the server *as if they are the user themselves*, which is useful for reproducing and debugging issues.

::::{dropdown} Exercise: User server management
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

d. *False* – servers are culled after 1 hour of inactivity by default. If a user requires a long-running process exceeding this period, then they should request an extension to this limit through their Hub Champion.

:::

::::

:::{card} 
KEY POINTS
^^^
- Users can launch servers with a variety of resources available, namely the number of CPU cores and RAM.
- It is important to use cloud resources responsibly to maximize efficiency and minimize carbon emissions. 
- Hub Champions can stop, restart and gain control of a user's server for troubleshooting purposes.

:::
