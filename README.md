# GitHub Heatmap
This projects creates a new Git repository with commits from the past and pushes it to your GitHub. This will make your commit heatmap shine.

## Getting started
**Create a new, empty GitHub repository and copy the remote url.**
```
git@github.com:dacappo/github-heatmap-output.git
```

**Run the ``create-heatmap.sh`` script from this repository with your repository remote and the number of days in the past that should be filled with commits.**

```
./create-heatmap.sh git@github.com:dacappo/github-heatmap-output.git 365
```

This can take a while. A subdirectory is created, initialized as new git repository and for each of the days in the past 0 - 3 commits are created. The resulting git history is pushed to the given remote.
