# ruby_tasks
Tasks created by my mentor so I can practice the basics of the Ruby language. There are only 25 tasks, all of them are not described thoroughly.

# Guidelines

1. A new "feature" branch should be sub-branched from `master` for each task (check [this guide](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow) for more info), the file should be named `task01.rb` and there should be a method containing the name of the task, e.g. `def task01(..)`

2. Once the development is done, the developer should open a PR from that branch and assign himself/herself as an assignee and another developer as a reviewer.

3. The reviewer might request changes, but the PR should be merged by the developer __only after the reviewer gave approval__.

4. The developer could push as many commits as he/she wants to the PR, but when it ready to be merged the developer should use the `Merge and squash` option (which will combine all commits into one and then merge that commit into the main branch). This is adding a link at the end of each commit in the main branch history (e.g. `(#1)` in https://github.com/MaraEfimova/ruby_tasks/commit/d761d79cad8f4c1962863e91dfbc3eceb815566c ) which is leading to the PR, so a developer could easily track which PR is this commit belonging to. And this is also keeping the main branch history clean and tidy, without the "noise" caused by meaningless commits and/or merges. Once the PR is merged the developer could use the `Delete branch` button to remove the feature branch from the remote repo, however deleting the remote feature branch is **optional**.

5. Each PR title should have the following format `Task[NUMBER] - Short description of the task`, e.g.
```
Task01 - Recognize if a string contains comparison
```

6. The PR description should have short meaningful info of what is done, e.g.
```
Use a regular expression to match only allowed comparison operators,
followed by a positive integer number. It is also allowing spaces,
but only if they are not in the comparison operator.
```

7. **(Optional)** If there is GitHub Issue opened for that task (e.g. https://github.com/MaraEfimova/ruby_tasks/issues/2) then:
- the title of the PR should have the issue number in the beginning like `[#NUMBER]`, e.g.
```
[#2] Task01 - Recognize if a string contains comparison
```
This is because in the main branch commit history this becomes a link to the issue (e.g. `[#2]` in https://github.com/MaraEfimova/ruby_tasks/commit/d761d79cad8f4c1962863e91dfbc3eceb815566c ), so a developer could easily track which issue is this commit fixing.
- at the bottom of the description, on a new line (preferably bolded) there should be a link to the issue, e.g. `**Resolves #2**`, this will link to issue and the PR, so once the PR is merged - the issue will automatically be resolved, in addition - GitHub is adding links to the PR at the top and the bottom of the issue, and in the PR it is adding a link to the issue with icon indicating its status. 
- on the right side panel select the `Development` option and select the issue (if it is not already linked to the PR), **NOTE** that if you added the link in PR's description the PR will already be linked to the issue and you won't need to do it again from here

8. **(Optional)** Commit messages should follow the 7 essential rules from this guideline - https://cbea.ms/git-commit/

A good example of a PR is https://github.com/MaraEfimova/ruby_tasks/pull/1 and of an issue is https://github.com/MaraEfimova/ruby_tasks/issues/2
