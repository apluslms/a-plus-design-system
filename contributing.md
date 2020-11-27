---
layout: page
title: Contributing to the design system
description: This page explains the process by which the design system gets updated
---
It's important that the design system reflects components already in use, and that it is updated every time components come into use, or are refined.

## Refine a component

If you're using a component and find a feature that's missing, or doesn't work quite the way you expect, a good place to start is GitHub. Every component page links to a GitHub issue to discuss that component. Start in that issue, and add a comment about what's missing. 

If changes are agreed, create a Pull Request in GitHub to share the changes to the guidelines, and add an example of the refinement, if necessary.

## Propose a new component

If you need a component which you think is missing, start by [creating a GitHub issue](https://github.com/apluslms/a-plus-design-system/issues/new/choose), prefixed with "Component proposal: ". Give details about your use case.

After some discussion, if a new component is agreed, create a component with a "Beta" label, and add guidelines and examples.

It might make sense to only add components which will be usable multiple times. 

### Creating a component page

1. Fork the (design system repository) on GitHub.
2. Clone the repository locally.
3. In the root of your newly cloned repository, run `docker-compose up`. The first time might take several minutes, don't worry. 
4. When the container is up and running, open the URL in the line that starts `Server address:` in your browser. This will automatically refresh as you add content.
5. Create some patterns. They should live in `_patterns/[COMPONENT_NAME]/`, where `[COMPONENT_NAME]` matches the name of the component. Take a look at those already there, but they must include `layout: pattern` at the top, and only the code needed for the example. Remember that the code is published in the page, so pay attention to the style.
6. Clone one of the pages from `components/`, giving it a name matching the name of the component.
7. Update the title, description and other content.
8. Add the pattern filenames in the `patterns` section at the top of your component file.
9. Remember to double-check how the page looks in the browser.
10. Make a pull request containing the changes - this is the time for others to comment on your proposed guidelines.
