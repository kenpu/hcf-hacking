import docker
client = docker.from_env()
for v in client.volumes.list():
    name = v.name
    if name.startswith("user-") or name.startswith("designer-") or name.startswith("grade-"):
        print("removing: %s" % v.name)
        v.remove()

