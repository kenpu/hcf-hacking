import docker
import sys

def get_running_id(client):
    try:
        container = client.containers.get('grading')
        return container
    except:
        return None

def get_mount(client):
    vols = client.volumes.list()
    users = []

    prefix = "user-"
    for v in vols:
        if v.name.startswith(prefix):
            users.append(v.name[len(prefix):])

    mount = dict((
        prefix + x, 
        dict(bind="/users/%s" % x, mode='rw')) for x in users)

    mount["designer-problemsets"] = dict(
            bind="/designer/problemsets",
            mode="ro")

    mount["grade-exchange"] = dict(
            bind="/designer/exchange",
            mode="rw")

    return mount

if __name__ == '__main__':
    client = docker.from_env()

    running =  get_running_id(client)
    if running:
        print("docker kill %s" % running.id, file=sys.stderr)
        try:
            running.kill()
            running.remove()
        except:
            pass

    mount = get_mount(client)

    print("Mounting:\n%s" % "\n".join(sorted(mount.keys())), file=sys.stderr)

    client.containers.run("hcf/grading-system",
            name="grading",
            volumes=mount,
            remove=True,
            detach=True)

    print("""
    docker exec -it grading /bin/bash -c "export COLUMNS=`tput cols`; export LINES=`tput lines`; exec bash"
    """)
