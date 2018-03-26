prefix=jupyterhub-user-
users=`docker volume ls --format "{{.Name}}" | grep $prefix`
echo $users
vol=""
for u in $users
do
    vol="${vol} -v ${u}:/home/${u}/work"
done

echo docker ${vol}
