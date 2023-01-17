cat /usr/share/dict/words | tr '[:upper:]' '[:lower:]'| sed 's/^\(.*\)$/word(\1)./' > wordlist.pl

