---
title: "MOTIVATE: Incorporating social norms into a configurable ABM of the decision to perform commuting behaviour"
author: Robert Greener, Daniel Lewis, Jon Reades, Simon Miles, and Steven Cummins
date: 25th July 2022
theme: sky
revealjs-url: reveal.js
navigationMode: linear
width: 2560
height: 1440
bibliography: library.bib
margin: 0
---

# Background

- Active travel policies frame walking & cycling as 'good', cars as 'bad'!
- Perceptions of acceptable commute method vary by groups.
- Social norms may explain this difference.

# Interventions

:::: {.columns}
::: {.column width="45%"}
![](images/ltn.jpg){height="80%"}
:::
::: {.column width="45%"}
![](images/ltn-ft.png){height="80%"}
:::
::::

# Question & model overview

- **Research question**: What interventions may be successful at increasing active travel?
- Need to better understand the decision-making process for commuters!
- Not about traffic flow!
- Incorporate:
    * peer/neighbour effects;
    * choice/habit; and
    * access and support.
- Fully configurable model to allow for parameter space exploration/adaptation.

# Methods

# Waltham Forest, London

![](images/LondonWaltham.svg){height="80%"}

Waltham Forest by Morwen and Richtom80 (<https://bit.ly/3yYFzLF>)

# Some assumptions

:::::::::::::: {.columns}
::: {.column width="45%"}
- 4 options at every time step: walk, cycle, public transport, or drive.
- Modelled loosely on Waltham Forest, a North Eastern London Borough.
- Used a microsimulation approach to ensure wards (neighbourhoods) matched real life on things such as car ownership and commute distance. This used data from the UK Household Longitudinal Survey and 2011 Census population data.
:::
::: {.column width="45%"}
![](images/neighbourhood-grid.svg){width="80%"}
:::
::::::::::::::

# Environmental assumptions

![](images/environment.svg){width="80%"}

# Agent assumptions

![](images/agent-belongings.svg){width="50%"}

# Model initialization

- Agents are created and assigned a range of characteristics:
    * a commute to fulfil (local, city, or beyond);
    * a neighbourhood, social network, and mobility culture; and
    * some psychological variables:
        - suggestibility to friends and neighbours;
        - adherence to norms;
        - inertia/resistance to change; and
        - weather sensitivity.
- Neighbourhoods are assigned a supportiveness and capacity.

# A model run

- Each agent goes to work every weekday.
- Each weekday, each agent calculates a *budget* of how much they are willing to commute by a given mode (norm + habit + congestion). This is then ranked.
- They also calculate a *cost* for each mode (distance + environmental supportiveness + weather). This is ranked in reverse (higher cost = lower ranked cost).
- Max of budget rank + reverse cost rank.

# Experimentation

# Modelling car-free days

:::::::::::::: {.columns}
::: {.column width="45%"}
- **Experiment**: After year 1, cars were banned on Wednesdays. The simulation was run for 4 more years.
- 200 runs.
- **Result**: More instability, but more active commutes.
- For every inactive journey, there were 0.091 active journeys (the odds).
- The odds were 77.7% greater in car-free days scenario.
:::
::: {.column width="45%"}
![](images/cfd.png){width="80%" caption="14 day moving average of active commutes"}
:::
::::::::::::::

# Conclusions & next steps

- Thinking about norms and habits are key to understanding the decision to commute.
- In our sample intervention, habits and norms allow us to destabilize the convention of commuting by car. We disrupt this convention by preventing the effect of habit (on car-free days); this then leads to a change in norm.
- Useful as a simulator of potential policies that may affect commuting-related norms.
- Extend the model with real-world built environment data!

# Any questions?

- Full paper available in the workshop proceedings.
- The model is available under a permissive license at <https://gitlab.com/ragreener1/Motivate>. The specific version used is available at <https://doi.org/hvpd>.
- The model is easily configurable using open standards (YAML) to define its parametrization.

## Acknowledgements

::: {.small}
- This research was funded by KCL–LSHTM seed funding. Robert Greener is supported by a Medical Research Council Studentship [grant number: MR/N0136638/1]. Steven Cummins is funded by Health Data Research UK (HDR-UK). HDR-UK is an initiative funded by the UK Research and Innovation, Department of Health and Social Care (England) and the devolved administrations, and leading medical research charities.
:::
