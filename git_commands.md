1006  git clone https://github.com/aotilm/it-universe-repo.git
 1007  ls
 1008  cd ~/Documents/it-universe-repo
 1009  git status
 1010  git add .
 1011  git status
 1012  git commit -m "Initial commit. First task"
 1013  git push origin main
 1014  ssh-keygen -t ed25519 -C "aotilm@gmail.com"
 1015  eval "$(ssh-agent -s)"
 1016  ssh-add ~/.ssh/id_ed25519
 1017  cat ~/.ssh/id_ed25519.pub
 1018  git remote set-url origin git@github.com:aotilm/it-universe-repo.git
 1019  git push origin main
 1020  clear
 1021  git branch
 1022  git checkout -b dev
 1023  git branch
 1024  nano test.txt
 1025  git add .
 1026  git commit -m "created a new dev branch and created test.txt file"
 1027  git push origin dev
 1028  git checkout -b aotilm-new-feature
 1029  echo "New feature readme" > README.md
 1030  git add .
 1031  git commit -m "new feature branch, changed readme"
 1032  git push origin aotilm-new-feature 
 1033  git status
 1034  git log
 1035  echo ".*" > .gitignore
 1036  git add .
 1037  git commit -m "add gitingore file"
 1038  git push origin aotilm-new-feature 
 1039  git status
 1040  ls
 1041  nano .gitignore
 1042  git checkout aotilm-new-feature 
 1043  echo "Modified content" >> README.md
 1044  cat README.md 
 1045  git commit -am "Update readme.md"
 1046  git reset --soft HEAD~1
 1047  git checkout main 
 1048  git branch 
 1049  cat README.md 
 1050  git add .
 1051  git commit -m "Update readme.md"
 1052  git revert HEAD --no-edit 
 1053  cat README.md 
 1054  git checkout main 
 1055  git log
 1056  git checkout aotilm-new-feature 
 1057  git log
 1058  git checkout main 
 1059  nano log.txt
 1060  git add .
 1061  git commit -m "add log.txt with logs of aotilm-new-feature branch"
 1062  git push origin main
 1063  git push 
 1064  git pull
 1065  git push origin main
 1066  git push 
 1067  git status
 1068  git pull origin main
 1069  git push origin main
 1070  git pull origin main --rebase
 1071  git push origin main
 1072  git branch -d aotilm-new-feature 
 1073  git branch -D aotilm-new-feature 
 1074  git push origin --delete aotilm-new-feature
 1075  git checkout dev 
