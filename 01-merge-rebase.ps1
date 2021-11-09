## git merge main vs git rebase main
# merge          | rebase
# git merge main | git rebase main

$repositoryName = 'source-repository'
mkdir $repositoryName
Push-Location $repositoryName

# initialize the repository
git init

# create a sample file
ni README.md
"m1" | Add-Content README.md
git add .
git commit -m "m1"

# create a new branch and add some commits
git checkout -b f1
"f1" | Add-Content README.md
git add .
git commit -m "f1"

"f2" | Add-Content README.md
git add .
git commit -m "f2"

"f3" | Add-Content README.md
git add .
git commit -m "f3"

git checkout main
Sleep -Seconds 1
ni README-2.md
git add .
git commit -m "m2"

git checkout f1

Pop-location
Copy-Item .\source-repository\ merge -Recurse
Copy-Item .\source-repository\ rebase -Recurse