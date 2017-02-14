#~/bin/sh

# Assemble the components of the site; a CMS seems badly overkill at this point.
# It's written like this on purpose.

SITE=/var/www/maintainer.org
 
pushd ../../maintainer.org/components/ || exit -100
for i in `ls *.page | sed "s/.page//"` ; do cat header.common $i.page footer.common > $SITE/$i.html ; done

popd

exit 0
