
# merge-ff          | merge-no-ff           | merge-squash
# git merge f1 --ff | git merge f1 --no-ff  | git merge f1 --squash; git commit -m "squash merge"

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


Pop-location
Copy-Item .\source-repository\ merge-ff -Recurse
Copy-Item .\source-repository\ merge-no-ff -Recurse
Copy-Item .\source-repository\ merge-squash -Recurse