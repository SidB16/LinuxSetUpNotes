Source:https://keybase.io/docs/linux-user-guide#quickstart

https://keybase.io/sid16

# given keybase user "max"
keybase encrypt max -m "this is a secret"
echo "this is a secret" | keybase encrypt max
keybase encrypt max -i secret.txt
keybase encrypt max -i secret.mp3 -b -o secret.mp3.encrypted

keybase decrypt -i movie.avi.encrypted -o movie.avi
keybase decrypt -i some_secret.txt
cat some_secret.txt.encrypted | keybase decrypt

keybase sign -m "I hereby abdicate the throne"
https://keybase.io/sid16keybase sign -i foo.exe -b -o foo.exe.signed


keybase pgp encrypt chris -m "secret"            # encrypt
keybase pgp encrypt maxtaco@twitter -m "secret"  # using a twitter name
keybase pgp encrypt maxtaco@reddit -m "secret"   # using a Reddit name
keybase pgp encrypt chris -s -m "secret"         # also sign with -s
keybase pgp encrypt chris -i foo.txt             # foo.txt -> foo.txt.asc
keybase pgp encrypt chris -i foo.txt -o bar.asc  # foo.txt -> bar.asc
echo 'secret' | keybase pgp encrypt chris        # stream


keybase pgp decrypt -i foo.txt.asc             # foo.txt.asc -> stdout
keybase pgp decrypt -i foo.txt.asc -o foo.txt  # foo.txt.asc -> foo.txt
cat foo.txt.asc | keybase pgp decrypt          # decrypt a stream


keybase version              # print the version number
keybase help                 # get help
keybase signup               # if you've never used Keybase
keybase login                # or...if you already have an account
keybase prove twitter        # prove you own a twitter account
keybase prove github         # prove a github account
keybase prove reddit         # prove a reddit account
keybase prove facebook       # prove a facebook
keybase prove hackernews     # prove an HN account
keybase prove https you.com  # prove a website
keybase prove http you.com   # if you don't have a legit cert
keybase prove dns you.com    # prove via a DNS entry

more:https://keybase.io/docs/command_line/basics
