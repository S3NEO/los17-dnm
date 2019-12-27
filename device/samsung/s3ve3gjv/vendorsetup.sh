echo "Checking for S3 Neo vendors..."
( 
FILE=vendor/samsung/s3ve3g-common/Android.mk
if test -f "$FILE"; then
    echo "s3ve3g-common: vendor exists [ 1 / 3 ]"; else
    echo "s3ve3g-common: download vendor from github! Your ROM wont boot! Abort..."
    exit 77
fi
FILE=vendor/samsung/s3ve3gjv/Android.mk
if test -f "$FILE"; then
    echo "s3ve3gjv: vendor exists [ 2 / 3 ]"; else
    echo "s3ve3gjv: download vendor from github! Your ROM wont boot! Abort..."
    exit 77
fi
FILE=vendor/samsung/msm8226-common/Android.mk
if test -f "$FILE"; then
    echo "msm8226-common: vendor exists [ 3 / 3 ]"; else
    echo "msm8226-common: download vendor from github! Your ROM wont boot! Abort..."
    exit 77
fi )
