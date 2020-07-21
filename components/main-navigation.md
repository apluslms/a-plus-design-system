---
layout: component-detail
group: components

title: Main Navigation
description: The navigation area that is visible on every page. 
status: Legacy

github_link: https://github.com/apluslms/a-plus-design-system/issues/6

variations:
- title: Not logged in
  description: Contains an empty course drop-down menu and log in link.
  pattern: main-navigation/logged-out.html
- title: Logged in
  description: The user is logged in and is not a member of any groups.
  pattern: main-navigation/logged-in.html
- title: Logged in with groups
  description: The user is logged in and is a member of one or more groups.
  pattern: main-navigation/logged-in-group.html
---


## Known Issues

- The gradient background may be out of place in an otherwise flat interface.
- The gradient background prevents automated contrast testing.
- The group selection is course speciic, but this menu is not course-specific, so this may not be the logical position for it.
- Within the DOM, content is repeated for mobile and desktop presentation versions.
- Course navigation is rendered inside main navigation for mobile users, breaking the landmark structure and skip links.