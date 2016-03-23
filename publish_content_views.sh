PUBLISH_AMOUNT=10
ORGANIZATION_ID=3
CV1=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 5 | head -n 1)
CV2=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 5 | head -n 1)
REPO_ID_ONE=29
REPO_ID_TWO=30

hammer content-view create --name $CV1 --organization-id $ORGANIZATION_ID
hammer content-view create --name $CV2 --organization-id $ORGANIZATION_ID
hammer content-view add-repository --name $CV1 --organization-id $ORGANIZATION_ID --repository-id $REPO_ID_ONE
hammer content-view add-repository --name $CV2 --organization-id $ORGANIZATION_ID --repository-id $REPO_ID_TWO

for i in $(seq 1 $PUBLISH_AMOUNT)
do  hammer content-view publish --name $CV1 --organization-id $ORGANIZATION_ID
done

for i in $(seq 1 $PUBLISH_AMOUNT)
do  hammer content-view publish --name $CV2 --organization-id $ORGANIZATION_ID
done
