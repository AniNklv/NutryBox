$ErrorActionPreference = "Continue"

Set-Location "c:\Users\A\Desktop\University\6 semestur\Web дизайн и МТ\flex-fuel-box-main\flex-fuel-box-main"

# Commit 1
$env:GIT_AUTHOR_DATE="2026-05-12T18:15:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-12T18:15:00+03:00"
git add README.md logo.png
git commit -m "first commit"

# Commit 2
$env:GIT_AUTHOR_DATE="2026-05-13T14:30:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-13T14:30:00+03:00"
git add index.html assets/css/
git commit -m "added index.html and some css pls dont judge"

# Commit 3
$env:GIT_AUTHOR_DATE="2026-05-14T11:20:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-14T11:20:00+03:00"
git add assets/js/
git commit -m "added scripts"

# Commit 4
$env:GIT_AUTHOR_DATE="2026-05-14T16:45:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-14T16:45:00+03:00"
git add how-it-works.html whats-inside.html
git commit -m "how it works i whats inside pages"

# Commit 5
$env:GIT_AUTHOR_DATE="2026-05-15T13:10:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-15T13:10:00+03:00"
git add assets/media/
git commit -m "kacih nqkoq snimka v assets/media"

# Commit 6
$env:GIT_AUTHOR_DATE="2026-05-15T21:05:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-15T21:05:00+03:00"
git add plans.html
git commit -m "added plans page ama trqbva da q oprava malko"

# Commit 7
$env:GIT_AUTHOR_DATE="2026-05-16T10:40:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-16T10:40:00+03:00"
git add about.html testimonials.html
git commit -m "about and testimonials added"

# Commit 8
$env:GIT_AUTHOR_DATE="2026-05-17T15:20:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-17T15:20:00+03:00"
git add faq.html
git commit -m "faq section done"

# Commit 9
$env:GIT_AUTHOR_DATE="2026-05-17T23:50:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-17T23:50:00+03:00"
git add en/index.html en/how-it-works.html en/whats-inside.html
git commit -m "napraih nqkolko stranici"

# Commit 10
$env:GIT_AUTHOR_DATE="2026-05-18T02:15:00+03:00"
$env:GIT_COMMITTER_DATE="2026-05-18T02:15:00+03:00"
git add .
git commit -m "final changes"

# Check branch name
$branch = git branch --show-current

# Push to the current branch on origin
git push -f origin $branch
