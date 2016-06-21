# homebrew-sshpass

Homebrew formula for sshpass.

Use this formula to work around brew install's error:

    "We won't add sshpass because it makes it too easy for novice SSH users to ruin SSH's security."

Be responsible. You can shoot your foot off by using this. DO NOT use sshpass to log into anything important.

## Installation

    $ # download this file
    $ brew install ./sshpass.rb
    $ sshpass -V
    sshpass 1.05 (C) 2006-2011 Lingnu Open Source Consulting Ltd.
    This program is free software, and can be distributed under the terms of the GPL
    See the COPYING file for more information.

## History

20160621
  * Fork from [eugeneoden/homebrew](https://github.com/eugeneoden/homebrew)'s [sshpass.rb](https://raw.github.com/eugeneoden/homebrew/eca9de1/Library/Formula/sshpass.rb)
  * Meet brew's requirement for SHA256
  * Use https in URLs
