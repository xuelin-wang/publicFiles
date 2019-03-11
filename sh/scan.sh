UPLOADS=" "
for f in /etc/alpine-release /etc/apt/sources.list /etc/lsb-release /etc/os-release /usr/lib/os-release /etc/oracle-release /etc/centos-release /etc/redhat-release /etc/system-release /lib/apk/db/installed /var/lib/dpkg/status /var/lib/rpm/Packages
do
    if [ -e "$f" ]
    then
        UPLOADS="$UPLOADS -F \"fileName=$f\" -F \"file=@$f\""
        ls -l "$f"
    fi
done

echo "UPLOADS = ${UPLOADS}"
