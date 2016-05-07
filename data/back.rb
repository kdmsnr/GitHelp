# coding: utf-8
[
  [
    "最新の状態に戻す",
    "git checkout master"
  ],
  [
    "(1|2|3|4|5|6|7|8|9|10|11|12)分前の状態に戻す",
    'git log --since="#{$1} minutes ago" --oneline | tail -1 | awk \'{print $1}\' | xargs -J xxx git checkout xxx'
  ],
  [
    "(1|2|3|4|5|6|7|8|9|10|11|12)時間前の状態に戻す",
    'git log --since="#{$1} hours ago" --oneline | tail -1 | awk \'{print $1}\' | xargs -J xxx git checkout xxx'
  ],
  [
    "(1|2|3|4|5|6|7|8|9|10|11|12)日前の状態に戻す",
    'git log --since="#{$1} days ago" --oneline | tail -1 | awk \'{print $1}\' | xargs -J xxx git checkout xxx'
  ]
]